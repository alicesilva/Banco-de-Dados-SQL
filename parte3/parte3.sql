-- 1
SELECT c.endereco
FROM CLIENTE c, DEPENDENTE d
WHERE d.cpf_cliente = c.cpf AND d.nome='Ana'

-- 2

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


-- 7


-- 8
