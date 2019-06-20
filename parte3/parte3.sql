-- 1
SELECT c.endereco
FROM CLIENTE c, DEPENDENTE d
WHERE d.cpf_cliente = c.cpf AND d.nome='Ana'

-- 2

SELECT c.nome, c.endereco
FROM CLIENTE c
WHERE c.endereco IN (SELECT c.endereco
FROM CLIENTE c
GROUP BY c.endereco
HAVING COUNT(*) > 1)

-- 3


-- 4
SELECT c.nome
FROM CLIENTE c, AVALIACAO a
WHERE c.cpf = a.cpf_cliente AND a.nota < (SELECT AVG(nota) FROM AVALIACAO)

-- 5
SELECT nome
FROM FUNCIONARIO
WHERE salario > 3000 AND funcao='técnico'

-- 6
SELECT funcao, COUNT(*)
FROM FUNCIONARIO
GROUP BY funcao, salario
ORDER BY salario

-- 7
SELECT p.nome
FROM PRODUTO p, CLIENTE c, VENDA v, HOSPEDA h
WHERE c.nome = 'Pedro' AND c.cpf = h.cpf_cliente AND h.numero_quarto = v.numero_quarto AND v.id_produto = p.id

-- 8
SELECT c.nome, COUNT(*) as NUMHOSPEDAGEM
FROM HOSPEDA h, CLIENTE c
WHERE c.cpf = h.cpf_cliente AND c.sexo = 'masculino'
GROUP BY c.nome
HAVING COUNT(*) > 2

--9

-- 10
SELECT f.nome
FROM FUNCIONARIO f, HOSPEDA h
WHERE f.cpf = h.cpf_cliente
