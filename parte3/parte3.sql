-- 1
SELECT c.endereco
FROM CLIENTE c, DEPENDENTE d
WHERE d.cpf_cliente = c.cpf AND d.nome LIKE '%Ana%'

-- 2
SELECT c.*
FROM CLIENTE c
WHERE c.endereco IN (SELECT c.endereco
FROM CLIENTE c
GROUP BY c.endereco
HAVING COUNT(*) > 1)

SELECT c.nome, c.endereco
FROM CLIENTE c
WHERE c.endereco IN (SELECT c.endereco
FROM CLIENTE c
GROUP BY c.endereco
HAVING COUNT(*) > 1)

-- 3
CREATE VIEW HospedagenQuarto(id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) AS
            SELECT h.id_hospedagem, h.dia_check_in, h.dia_check_out, h.cpf_cliente, h.numero_quarto
            FROM HOSPEDA h, QUARTO q
            WHERE q.numero = h.numero_quarto
            ORDER BY h.numero_quarto, h.dia_check_in

-- 4
SELECT c.*
FROM CLIENTE c, AVALIACAO a
WHERE c.cpf = a.cpf_cliente AND a.nota < (SELECT AVG(nota) FROM AVALIACAO)

-- 5
SELECT *
FROM FUNCIONARIO
WHERE salario > 3000 AND funcao='técnico'

-- 6
SELECT funcao, COUNT(*)
FROM FUNCIONARIO
GROUP BY funcao, salario
ORDER BY salario

-- 7
SELECT p.*
FROM PRODUTO p, CLIENTE c, VENDA v, HOSPEDA h
WHERE c.nome = 'Pedro' 
      AND c.cpf = h.cpf_cliente 
      AND h.numero_quarto = v.numero_quarto
      AND v.data BETWEEN h.dia_check_in AND h.dia_check_out
      AND v.id_produto = p.id

-- 8
SELECT c.nome, COUNT(*) as NUMHOSPEDAGEM
FROM HOSPEDA h, CLIENTE c
WHERE c.cpf = h.cpf_cliente AND c.sexo = 'masculino'
GROUP BY c.nome
HAVING COUNT(*) > 2

--9

-- 10
SELECT f.*
FROM FUNCIONARIO f, HOSPEDA h
WHERE f.cpf = h.cpf_cliente

-- 11
CREATE VIEW ClienteCompra(cpf, email, nome, endereco, sexo, data_nasc)
           AS SELECT c.nome, SUM(v.quantidade)
              FROM CLIENTE c, HOSPEDA h, VENDA v
              WHERE c.cpf = h.cpf_cliente AND h.numero_quarto=v.numero_quarto AND data BETWEEN h.dia_check_in AND h.dia_check_out
              GROUP BY c.nome
              ORDER BY SUM(v.quantidade) DESC
-- 12
CREATE VIEW ProdutosLR(tipo, valor)
            AS SELECT tipo, valor
               FROM PRODUTO
               WHERE (tipo = 'lavanderia' OR tipo = 'restaurante') AND (valor BETWEEN 10.00 AND 50.00)
-- 13
ALTER TABLE CLIENTE ADD CONSTRAINT verificaemail CHECK(REGEXP_LIKE(email, '\w+@[:alnum:]+.[:lower:]+'))

-- 14
