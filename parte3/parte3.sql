/*1.Liste os endereços dos clientes que possuem algum dependente com “Ana” no nome*/
SELECT c.endereco
FROM CLIENTE c, DEPENDENTE d
WHERE d.cpf_cliente = c.cpf AND d.nome LIKE '%Ana%'

/*2. Liste os clientes que possuem endereços iguais.*/
SELECT c.*
FROM CLIENTE c
WHERE c.endereco IN (SELECT c.endereco
FROM CLIENTE c
GROUP BY c.endereco
HAVING COUNT(*) > 1)

/*3. Crie uma view que lista as hospedagens de um quarto ordenadas pelo número do quarto e pela data da hospedagem.*/
CREATE VIEW HospedagemQuarto(id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) AS
            SELECT h.id_hospedagem, h.dia_check_in, h.dia_check_out, h.cpf_cliente, h.numero_quarto
            FROM HOSPEDA h, QUARTO q
            WHERE q.numero = h.numero_quarto
            ORDER BY h.numero_quarto, h.dia_check_in

/*4. Quais os clientes que fizeram avaliação abaixo da média de avaliações.*/
SELECT c.*
FROM CLIENTE c, AVALIACAO a
WHERE c.cpf = a.cpf_cliente AND a.nota < (SELECT AVG(nota) FROM AVALIACAO)

/*5. Liste os funcionários com salários superiores a R$ 3000,00 na função de técnico.*/
SELECT *
FROM FUNCIONARIO
WHERE salario > 3000 AND funcao='técnico'

/* 6. Liste o número de funcionários de cada função por ordem crescente de salário.*/
SELECT funcao, COUNT(*)
FROM FUNCIONARIO
GROUP BY funcao, salario
ORDER BY salario

/*7. Liste todos os produtos consumidos por clientes cujo nome seja igual a “Pedro”?*/
SELECT p.*
FROM PRODUTO p, CLIENTE c, VENDA v, HOSPEDA h
WHERE c.nome = 'Pedro' 
      AND c.cpf = h.cpf_cliente 
      AND h.numero_quarto = v.numero_quarto
      AND v.data BETWEEN h.dia_check_in AND h.dia_check_out
      AND v.id_produto = p.id

/*8.Quais os clientes do sexo masculino que possuem mais que duas hospedagem.*/
SELECT c.*
FROM CLIENTE c
WHERE (SELECT COUNT(*)
       FROM HOSPEDA h
       WHERE c.cpf = h.cpf_cliente) > 2 AND c.sexo = 'masculino'

/*9.Liste os quartos que não foram hospedados nas datas reservadas.*/
SELECT q.*
FROM QUARTO q, HOSPEDA h, RESERVA r
WHERE q.numero = h.numero_quarto AND h.numero_quarto = r.numero_quarto
      AND h.dia_check_in <> r.dia_check_in AND h.dia_check_out <> r.dia_check_out

/*10.Liste os funcionários que se hospedaram no hotel.*/
SELECT f.*
FROM FUNCIONARIO f, HOSPEDA h
WHERE f.cpf = h.cpf_cliente

/*11.Crie uma view que liste os clientes de forma decrescente pelo número de produtos comprados.*/
CREATE VIEW ClienteCompra(cpf, nome, quantidade) AS
            SELECT c.cpf, c.nome, SUM(v.quantidade)
            FROM CLIENTE c, HOSPEDA h, VENDA v
            WHERE c.cpf = h.cpf_cliente AND h.numero_quarto=v.numero_quarto AND v.data BETWEEN h.dia_check_in AND h.dia_check_out
            GROUP BY c.cpf, c.nome
            ORDER BY SUM(v.quantidade) DESC
/*Crie uma view que liste os produtos do tipo lavanderia ou restaurante que possuem valor entre R$ 10,00 e 50,00.*/
CREATE VIEW ProdutosLR(id, tipo, nome, valor) AS
            SELECT p.id, p.tipo, p.nome, p.valor
            FROM PRODUTO p
            WHERE (p.tipo = 'lavanderia' OR p.tipo = 'restaurante') AND p.valor BETWEEN 10.00 AND 50.00
-- 13
ALTER TABLE CLIENTE ADD CONSTRAINT verificaemail CHECK(REGEXP_LIKE(email, '\w+@[a-z0-9]+\.[a-z]+'))

-- 14
CREATE OR REPLACE TRIGGER verifica_cpf
BEFORE INSERT
  on DEPENDENTE
  FOR EACH ROW 

BEGIN
    IF(:new.cpf = :new.cpf_cliente) THEN
      RAISE_APPLICATION_ERROR(-20000,'O dependente não pode ter cpf igual o cliente.');
    END IF;
END;
-- 15
CREATE OR REPLACE TRIGGER Delete_Dependente
BEFORE DELETE
  on CLIENTE
  FOR EACH ROW 

BEGIN
DELETE FROM DEPENDENTE d WHERE d.cpf_cliente = :OLD.cpf;
END;
-- 16
CREATE OR REPLACE PROCEDURE atualizaPrecosDiariasByTipo(percentual FLOAT, tipoQ QUARTO.tipo%TYPE) AS
  CURSOR c_quarto IS 
    SELECT numero FROM QUARTO WHERE tipo = tipoQ FOR UPDATE;
    num QUARTO.numero%TYPE;
BEGIN
  OPEN c_quarto;
  LOOP
    FETCH c_quarto INTO num;
    EXIT WHEN c_quarto%notfound;
    UPDATE QUARTO SET valor_diaria = (valor_diaria * (percentual/100)) + valor_diaria  WHERE tipo = tipoQ;
  END LOOP;

  CLOSE c_quarto;
END;
/
-- Executa procedure
DECLARE
  percentual NUMBER;
  tipo QUARTO.tipo%TYPE;
BEGIN
  atualizaPrecosDiariasByTipo(percentual, tipo);
END;
-- 17
CREATE OR REPLACE PROCEDURE getManutencoesByPeriodo(
	   dataInicial IN MANUTENCAO.data%TYPE,
           dataFinal IN MANUTENCAO.data%TYPE,
	   c_man OUT SYS_REFCURSOR)
IS
BEGIN

  OPEN c_man FOR
  SELECT * FROM MANUTENCAO WHERE data BETWEEN dataInicial AND dataFinal;
 
END;
/
-- Executa procedure
DECLARE 
  dbManutencaoCursor SYS_REFCURSOR;
  dbManutencao MANUTENCAO%ROWTYPE;
  dataInicial DATE;
  dataFinal DATE;
BEGIN
  
  getManutencoesByPeriodo(dataInicial, dataFinal, dbManutencaoCursor);
  
  LOOP
    
	FETCH dbManutencaoCursor INTO dbManutencao;
	
    EXIT WHEN dbManutencaoCursor%NOTFOUND;
    dbms_output.put_line('ID_MANUTENCAO, NUMERO_QUARTO: '||dbManutencao.id_manutencao);
    dbms_output.put_line('ID_MANUTENCAO, NUMERO_QUARTO: '||dbManutencao.numero_quarto);
  
  END LOOP;

  CLOSE dbManutencaoCursor;
  
END;