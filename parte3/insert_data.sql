-- Insere clientes

INSERT INTO CLIENTE (cpf, email, nome, endereco, sexo, data_nasc)
VALUES  ('15193076670', 'isabelle@gmail.com', 'Isabelle', 'Rua Celeste Arruda', 'feminino', TO_DATE('1991/05/20', 'yyyy/mm/dd'));

INSERT INTO CLIENTE (cpf, email, nome, endereco, sexo, data_nasc)
VALUES  ('90003715035', 'marcos@gmail.com', 'Marcos', 'Rua Celeste Arruda', 'masculino', TO_DATE('1992/03/20', 'yyyy/mm/dd'));

INSERT INTO CLIENTE (cpf, email, nome, endereco, sexo, data_nasc)
VALUES  ('06701066585', 'carolina@gmail.com', 'Carolina', 'Rua Celeste Arruda', 'feminino', TO_DATE('1993/05/10', 'yyyy/mm/dd'));

INSERT INTO CLIENTE (cpf, email, nome, endereco, sexo, data_nasc)
VALUES  ('17686008720', 'filipe@gmail.com', 'Filipe', 'Quadra QR 205', 'masculino', TO_DATE('1994/01/02', 'yyyy/mm/dd'));

INSERT INTO CLIENTE (cpf, email, nome, endereco, sexo, data_nasc)
VALUES  ('62170654879', 'severino@gmail.com', 'Severino', 'Quadra QR 205', 'masculino', TO_DATE('1995/08/20', 'yyyy/mm/dd'));

INSERT INTO CLIENTE (cpf, email, nome, endereco, sexo, data_nasc)
VALUES  ('18798983490', 'betina@gmail.com', 'Betina', 'Rua Vila Rica', 'feminino', TO_DATE('1996/03/22', 'yyyy/mm/dd'));

INSERT INTO CLIENTE (cpf, email, nome, endereco, sexo, data_nasc)
VALUES  ('71146985428', 'alice@gmail.com', 'Alice', 'Rua Jacarta', 'feminino', TO_DATE('1997/06/25', 'yyyy/mm/dd'));

INSERT INTO CLIENTE (cpf, email, nome, endereco, sexo, data_nasc)
VALUES  ('34268526323', 'danilo@gmail.com', 'Pedro', 'Avenida Alberto Maranhão', 'masculino', TO_DATE('1998/09/24', 'yyyy/mm/dd'));

INSERT INTO CLIENTE (cpf, email, nome, endereco, sexo, data_nasc)
VALUES  ('65518164106', 'francisco@gmail.com', 'Pedro', 'Rua João de Barro', 'masculino', TO_DATE('1999/04/17', 'yyyy/mm/dd'));

INSERT INTO CLIENTE (cpf, email, nome, endereco, sexo, data_nasc)
VALUES  ('80138173346', 'bento@gmail.com', 'Pedro', 'Rua da Alegria', 'masculino', TO_DATE('1996/06/21', 'yyyy/mm/dd'));


-- Insere funcionarios

INSERT INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao)
VALUES  ('63581027372', 'Mariana', TO_DATE('1969/04/12', 'yyyy/mm/dd'), 2000, 'camareiro');

INSERT INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao)
VALUES  ('02262023646', 'Renato', TO_DATE('1969/04/12', 'yyyy/mm/dd'), 2000, 'camareiro');

INSERT INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao)
VALUES  ('95283034631', 'Ruan', TO_DATE('1969/04/12', 'yyyy/mm/dd'), 4000, 'técnico');

INSERT INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao)
VALUES  ('02010581202', 'Bernardo', TO_DATE('1969/04/12', 'yyyy/mm/dd'), 4000, 'técnico');

INSERT INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao)
VALUES  ('27294836086', 'Kaue', TO_DATE('1969/04/12', 'yyyy/mm/dd'), 2000, 'camareiro');

INSERT INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao)
VALUES  ('93015568396', 'Matheus', TO_DATE('1969/04/12', 'yyyy/mm/dd'), 4000, 'técnico');

INSERT INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao)
VALUES  ('43844770402', 'Erick', TO_DATE('1969/04/12', 'yyyy/mm/dd'), 2000, 'camareiro');

INSERT INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao)
VALUES  ('23825978281', 'Caleb', TO_DATE('1969/04/12', 'yyyy/mm/dd'), 4000, 'técnico');

INSERT INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao)
VALUES  ('68431746637', 'José', TO_DATE('1969/04/12', 'yyyy/mm/dd'), 4000, 'técnico');

INSERT INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao)
VALUES  ('12793628204', 'Malu', TO_DATE('1969/04/12', 'yyyy/mm/dd'), 2000, 'técnico');


-- Insere quartos

INSERT INTO QUARTO (numero, tipo, vista, valor_diaria)
VALUES  ('913', 'simples', 'lateral', 150);

INSERT INTO QUARTO (numero, tipo, vista, valor_diaria)
VALUES  ('754', 'duplo twin', 'frontal', 200);

INSERT INTO QUARTO (numero, tipo, vista, valor_diaria)
VALUES  ('453', 'duplo casal', 'frontal', 230);

INSERT INTO QUARTO (numero, tipo, vista, valor_diaria)
VALUES  ('555', 'triplo', 'lateral', 250);

INSERT INTO QUARTO (numero, tipo, vista, valor_diaria)
VALUES  ('921', 'simples', 'frontal', 170);

INSERT INTO QUARTO (numero, tipo, vista, valor_diaria)
VALUES  ('568', 'triplo', 'frontal', 270);

INSERT INTO QUARTO (numero, tipo, vista, valor_diaria)
VALUES  ('644', 'duplo twin', 'lateral', 170);

INSERT INTO QUARTO (numero, tipo, vista, valor_diaria)
VALUES  ('466', 'duplo casal', 'lateral', 200);

INSERT INTO QUARTO (numero, tipo, vista, valor_diaria)
VALUES  ('977', 'simples', 'lateral', 150);

INSERT INTO QUARTO (numero, tipo, vista, valor_diaria)
VALUES  ('169', 'triplo', 'lateral', 250);


-- Insere reservas

INSERT INTO RESERVA (id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out)
VALUES  (1, '34268526323', '568', TO_DATE('2019/04/20', 'yyyy/mm/dd'), TO_DATE('2019/04/23', 'yyyy/mm/dd'));

INSERT INTO RESERVA (id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out)
VALUES  (2, '65518164106', '644', TO_DATE('2019/04/20', 'yyyy/mm/dd'), TO_DATE('2019/04/28', 'yyyy/mm/dd'));

INSERT INTO RESERVA (id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out)
VALUES  (3, '80138173346', '466', TO_DATE('2019/04/20', 'yyyy/mm/dd'), TO_DATE('2019/04/21', 'yyyy/mm/dd'));

INSERT INTO RESERVA (id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out)
VALUES  (4, '15193076670', '977', TO_DATE('2019/04/20', 'yyyy/mm/dd'), TO_DATE('2019/04/25', 'yyyy/mm/dd'));

INSERT INTO RESERVA (id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out)
VALUES  (5, '90003715035', '169', TO_DATE('2019/05/20', 'yyyy/mm/dd'), TO_DATE('2019/05/21', 'yyyy/mm/dd'));

INSERT INTO RESERVA (id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out)
VALUES  (6, '06701066585', '913', TO_DATE('2019/03/20', 'yyyy/mm/dd'), TO_DATE('2019/03/22', 'yyyy/mm/dd'));

INSERT INTO RESERVA (id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out)
VALUES  (7, '17686008720', '754', TO_DATE('2019/03/20', 'yyyy/mm/dd'), TO_DATE('2019/04/20', 'yyyy/mm/dd'));

INSERT INTO RESERVA (id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out)
VALUES  (8, '62170654879', '453', TO_DATE('2019/08/10', 'yyyy/mm/dd'), TO_DATE('2019/08/12', 'yyyy/mm/dd'));

INSERT INTO RESERVA (id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out)
VALUES  (9, '18798983490', '555', TO_DATE('2019/04/24', 'yyyy/mm/dd'), TO_DATE('2019/04/26', 'yyyy/mm/dd'));

INSERT INTO RESERVA (id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out)
VALUES  (10, '71146985428', '921', TO_DATE('2019/04/22', 'yyyy/mm/dd'), TO_DATE('2019/04/25', 'yyyy/mm/dd'));



-- Insere manutencao

INSERT INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao)
VALUES  (1, '27294836086', '555', TO_DATE('2019/07/03', 'yyyy/mm/dd'), 'limpeza'); 

INSERT INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao)
VALUES  (2, '93015568396', '921',  TO_DATE('2019/06/03', 'yyyy/mm/dd'), 'conserto'); 

INSERT INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao)
VALUES  (3, '43844770402', '568',  TO_DATE('2019/05/03', 'yyyy/mm/dd'), 'limpeza', 'quebraram a pia'); 

INSERT INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao)
VALUES  (4, '23825978281', '644',  TO_DATE('2019/07/07', 'yyyy/mm/dd'), 'conserto'); 

INSERT INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao)
VALUES  (5, '68431746637', '466',  TO_DATE('2019/08/06', 'yyyy/mm/dd'), 'conserto', 'precisa de um novo chuveiro'); 

INSERT INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao)
VALUES  (6, '12793628204', '977',  TO_DATE('2019/10/20', 'yyyy/mm/dd'), 'conserto', 'ok'); 

INSERT INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao)
VALUES  (7, '63581027372', '169',  TO_DATE('2019/04/02', 'yyyy/mm/dd'), 'limpeza'); 

INSERT INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao)
VALUES  (8, '02262023646', '913',  TO_DATE('2019/07/02', 'yyyy/mm/dd'), 'limpeza', 'estava faltando uma toalha'); 

INSERT INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao)
VALUES  (9, '95283034631', '754',  TO_DATE('2019/11/02', 'yyyy/mm/dd'), 'conserto', 'precisa de uma nova pia'); 

INSERT INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao)
VALUES  (10, '02010581202', '453',  TO_DATE('2019/12/10', 'yyyy/mm/dd'), 'conserto'); 


-- Insere produtos

INSERT INTO PRODUTO (id, tipo, nome, valor, descricao)
VALUES  (1, 'lavanderia', 'detergente', 10.90, 'Detergente Lava Louças 5L 1 UN Lim+'); 

INSERT INTO PRODUTO (id, tipo, nome, valor, descricao)
VALUES  (2, 'bar', 'champanhe', 18.50, 'Salton Espumante Classic Meio Doce'); 

INSERT INTO PRODUTO (id, tipo, nome, valor, descricao)
VALUES  (3, 'restaurante', 'pizza', 33.00, 'MOLHO DE TOMATE, MUSSARELA, MILHO, ERVILHA, PALMITO E AZEITONAS'); 

INSERT INTO PRODUTO (id, tipo, nome, valor, descricao)
VALUES  (4, 'frigobar', 'água', 1.10, 'Água Mineral Verão Sem Gás 300ml 1 Un Lindoya'); 

INSERT INTO PRODUTO (id, tipo, nome, valor, descricao)
VALUES  (5, 'lavanderia', 'acidulante', 16.00, 'Ácido Cítrico Anidro Acidulante/antioxidante - 1kg'); 

INSERT INTO PRODUTO (id, tipo, nome, valor, descricao)
VALUES  (6, 'bar', 'whisky', 129.90, 'Whisky Jack Daniels Honey 1000 ml'); 

INSERT INTO PRODUTO (id, tipo, nome, valor, descricao)
VALUES  (7, 'restaurante', 'pastel', 5.90, 'QUEIJO COM CALABRESA'); 

INSERT INTO PRODUTO (id, tipo, nome, valor, descricao)
VALUES  (8, 'frigobar', 'refrigerante', 4.90, 'Refrigerante SPRITE Lata 350ml'); 

INSERT INTO PRODUTO (id, tipo, nome, valor, descricao)
VALUES  (9, 'lavanderia', 'amaciante', 9.99, 'Amaciante Concentrado Original 500 ml, Comfort'); 

INSERT INTO PRODUTO (id, tipo, nome, valor, descricao)
VALUES  (10, 'bar', 'vodka', 149.90, 'Vodka Cîroc 750 ml'); 



-- Insere avaliacoes

INSERT INTO AVALIACAO (id, nota, data, comentario, cpf_cliente)
VALUES  (1, 4, TO_DATE('2019/11/10', 'yyyy/mm/dd'), 'péssima localização', '65518164106'); 

INSERT INTO AVALIACAO (id, nota, data, cpf_cliente)
VALUES  (2, 7, TO_DATE('2019/10/04', 'yyyy/mm/dd'), '80138173346'); 

INSERT INTO AVALIACAO (id, nota, data, cpf_cliente)
VALUES  (3, 9, TO_DATE('2019/12/05', 'yyyy/mm/dd'), '15193076670'); 

INSERT INTO AVALIACAO (id, nota, data, cpf_cliente)
VALUES  (4, 8, TO_DATE('2019/11/06', 'yyyy/mm/dd'), '90003715035'); 

INSERT INTO AVALIACAO (id, nota, data, comentario, cpf_cliente)
VALUES  (5, 10, TO_DATE('2019/04/11', 'yyyy/mm/dd'), 'atendimento excelente', '06701066585'); 

INSERT INTO AVALIACAO (id, nota, data, comentario, cpf_cliente)
VALUES  (6, 2, TO_DATE('2019/03/12', 'yyyy/mm/dd'), 'odiei a comida', '17686008720'); 

INSERT INTO AVALIACAO (id, nota, data, comentario, cpf_cliente)
VALUES  (7, 2, TO_DATE('2019/05/12', 'yyyy/mm/dd'), 'estava muuuito quente, o ar condicionado quebrou e ninguém foi consertar', '62170654879'); 

INSERT INTO AVALIACAO (id, nota, data, comentario, cpf_cliente)
VALUES  (8, 4, TO_DATE('2019/06/17', 'yyyy/mm/dd'), 'odiei a comida', '18798983490'); 

INSERT INTO AVALIACAO (id, nota, data, comentario, cpf_cliente)
VALUES  (9, 6, TO_DATE('2019/01/02', 'yyyy/mm/dd'), 'o ambiente não estava limpo quando cheguei', '71146985428'); 

INSERT INTO AVALIACAO (id, nota, data, cpf_cliente)
VALUES  (10, 8, TO_DATE('2019/03/04', 'yyyy/mm/dd'), '34268526323'); 


-- Insere dependentes

INSERT INTO DEPENDENTE (cpf, data_nasc, nome, cpf_cliente)
VALUES  ('61559084430', TO_DATE('1983/07/18', 'yyyy/mm/dd'), 'Ana', '90003715035'); 

INSERT INTO DEPENDENTE (cpf, data_nasc, nome, cpf_cliente)
VALUES  ('97539828870', TO_DATE('1990/06/19', 'yyyy/mm/dd'), 'Tais Ana da Silva', '06701066585'); 

INSERT INTO DEPENDENTE (cpf, data_nasc, nome, cpf_cliente)
VALUES  ('06910791290', TO_DATE('1982/05/14', 'yyyy/mm/dd'), 'Ana Maria', '17686008720'); 

INSERT INTO DEPENDENTE (cpf, data_nasc, nome, cpf_cliente)
VALUES  ('09199423936', TO_DATE('1980/05/12', 'yyyy/mm/dd'), 'Martin', '62170654879'); 

INSERT INTO DEPENDENTE (cpf, data_nasc, nome, cpf_cliente)
VALUES  ('87509692342', TO_DATE('1990/08/25', 'yyyy/mm/dd'), 'Malu', '18798983490'); 

INSERT INTO DEPENDENTE (cpf, data_nasc, nome, cpf_cliente)
VALUES  ('29991563598', TO_DATE('1990/08/30', 'yyyy/mm/dd'), 'Marcos', '71146985428'); 

INSERT INTO DEPENDENTE (cpf, data_nasc, nome, cpf_cliente)
VALUES  ('94023258326', TO_DATE('1985/06/19', 'yyyy/mm/dd'), 'Hadassa', '34268526323'); 

INSERT INTO DEPENDENTE (cpf, data_nasc, nome, cpf_cliente)
VALUES  ('62914953097', TO_DATE('1983/05/15', 'yyyy/mm/dd'), 'Laura', '65518164106'); 

INSERT INTO DEPENDENTE (cpf, data_nasc, nome, cpf_cliente)
VALUES  ('93735996159', TO_DATE('1982/04/21', 'yyyy/mm/dd'), 'Clarisse', '80138173346'); 

INSERT INTO DEPENDENTE (cpf, data_nasc, nome, cpf_cliente)
VALUES  ('22327403154', TO_DATE('1981/09/22', 'yyyy/mm/dd'), 'Nathan', '15193076670'); 

-- Insere Hospeda
INSERT INTO HOSPEDA VALUES (1, TO_DATE('2019/03/20', 'yyyy/mm/dd'), TO_DATE('2019/03/22', 'yyyy/mm/dd'),'15193076670', '913');
INSERT INTO HOSPEDA VALUES (2, TO_DATE('2019/03/20', 'yyyy/mm/dd'), TO_DATE('2019/04/20', 'yyyy/mm/dd'),'90003715035', '754');
INSERT INTO HOSPEDA VALUES (3, TO_DATE('2019/08/10', 'yyyy/mm/dd'), TO_DATE('2019/08/12', 'yyyy/mm/dd'),'06701066585', '453');
INSERT INTO HOSPEDA VALUES (4, TO_DATE('2019/04/24', 'yyyy/mm/dd'), TO_DATE('2019/04/26', 'yyyy/mm/dd'),'17686008720', '555');
INSERT INTO HOSPEDA VALUES (5, TO_DATE('2019/04/22', 'yyyy/mm/dd'), TO_DATE('2019/04/25', 'yyyy/mm/dd'),'62170654879', '921');
INSERT INTO HOSPEDA VALUES (6, TO_DATE('2019/04/20', 'yyyy/mm/dd'), TO_DATE('2019/04/23', 'yyyy/mm/dd'),'18798983490', '568');
INSERT INTO HOSPEDA VALUES (7, TO_DATE('2019/04/20', 'yyyy/mm/dd'), TO_DATE('2019/04/28', 'yyyy/mm/dd'),'71146985428', '644');
INSERT INTO HOSPEDA VALUES (8, TO_DATE('2019/04/20', 'yyyy/mm/dd'), TO_DATE('2019/04/21', 'yyyy/mm/dd'),'34268526323', '466');
INSERT INTO HOSPEDA VALUES (9, TO_DATE('2019/04/20', 'yyyy/mm/dd'), TO_DATE('2019/04/25', 'yyyy/mm/dd'),'65518164106', '977');
INSERT INTO HOSPEDA VALUES (10, TO_DATE('2019/05/20', 'yyyy/mm/dd'), TO_DATE('2019/05/21', 'yyyy/mm/dd'), '80138173346', '169');
INSERT INTO HOSPEDA VALUES (11, TO_DATE('2019/06/20', 'yyyy/mm/dd'), TO_DATE('2019/06/21', 'yyyy/mm/dd'), '80138173346', '169');
INSERT INTO HOSPEDA VALUES (12, TO_DATE('2019/10/20', 'yyyy/mm/dd'), TO_DATE('2019/10/21', 'yyyy/mm/dd'), '80138173346', '977');
INSERT INTO HOSPEDA VALUES (13, TO_DATE('2019/11/20', 'yyyy/mm/dd'), TO_DATE('2019/11/21', 'yyyy/mm/dd'), '80138173346', '977');
INSERT INTO HOSPEDA VALUES (14, TO_DATE('2019/02/20', 'yyyy/mm/dd'), TO_DATE('2019/02/21', 'yyyy/mm/dd'), '80138173346', '466');
INSERT INTO HOSPEDA VALUES (15, TO_DATE('2019/02/20', 'yyyy/mm/dd'), TO_DATE('2019/02/21', 'yyyy/mm/dd'), '15193076670', '169');


-- Insere Venda
INSERT INTO VENDA VALUES (1, 1, '913', TO_DATE('2019/03/21', 'yyyy/mm/dd'), 5);
INSERT INTO VENDA VALUES (2, 2, '754', TO_DATE('2019/03/20', 'yyyy/mm/dd'), 10);
INSERT INTO VENDA VALUES (3, 3, '453', TO_DATE('2019/08/11', 'yyyy/mm/dd'), 6);
INSERT INTO VENDA VALUES (4, 4, '555', TO_DATE('2019/04/25', 'yyyy/mm/dd'), 11);
INSERT INTO VENDA VALUES (5, 5, '921', TO_DATE('2019/04/22', 'yyyy/mm/dd'), 12);
INSERT INTO VENDA VALUES (6, 6, '568', TO_DATE('2019/04/21', 'yyyy/mm/dd'), 4);
INSERT INTO VENDA VALUES (7, 7, '644', TO_DATE('2019/04/20', 'yyyy/mm/dd'), 1);
INSERT INTO VENDA VALUES (8, 8, '466',TO_DATE('2019/04/21', 'yyyy/mm/dd'), 6);
INSERT INTO VENDA VALUES (9, 9, '977', TO_DATE('2019/04/20', 'yyyy/mm/dd'), 8);
INSERT INTO VENDA VALUES (10, 1, '169',  TO_DATE('2019/05/21', 'yyyy/mm/dd'), 1);
INSERT INTO VENDA VALUES (11, 2, '169',  TO_DATE('2019/07/21', 'yyyy/mm/dd'), 1);

-- Insere Telefone
INSERT INTO TELEFONE VALUES ('9866262626', '15193076670');

INSERT INTO TELEFONE VALUES ('6543217457', '90003715035');

INSERT INTO TELEFONE VALUES ('4561234556', '06701066585');

INSERT INTO TELEFONE VALUES ('1234567890', '17686008720');

INSERT INTO TELEFONE VALUES ('0987654432', '62170654879');

INSERT INTO TELEFONE VALUES ('3334445556', '18798983490');

INSERT INTO TELEFONE VALUES ('1112233344','71146985428');

INSERT INTO TELEFONE VALUES ('4134134311', '34268526323');

INSERT INTO TELEFONE VALUES ('4332423243', '65518164106');

INSERT INTO TELEFONE VALUES ('4314311433', '80138173346');

-- Insere Equipamento
INSERT INTO EQUIPAMENTO VALUES ('frigobar','913');

INSERT INTO EQUIPAMENTO VALUES ('ar', '754');

INSERT INTO EQUIPAMENTO VALUES ('televisao', '453');

INSERT INTO EQUIPAMENTO VALUES ('frigobar','555');

INSERT INTO EQUIPAMENTO VALUES ('lavanderia','921');

INSERT INTO EQUIPAMENTO VALUES ('ar','568');

INSERT INTO EQUIPAMENTO VALUES ('lavanderia','644');

INSERT INTO EQUIPAMENTO VALUES ('frigobar', '466');

INSERT INTO EQUIPAMENTO VALUES ('ar','977');

INSERT INTO EQUIPAMENTO VALUES ('lavanderia','169');

