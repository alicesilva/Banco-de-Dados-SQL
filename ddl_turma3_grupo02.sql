--DROP TABLE Manuntencao;
--DROP TABLE Venda;
--DROP TABLE Reserva;
--DROP TABLE Hospedagem;
--DROP TABLE Telefone;
--DROP TABLE Equipamento;
--DROP TABLE Dependente;
--DROP TABLE Avaliacao;
--DROP TABLE Funcionario;
--DROP TABLE Produto;
--DROP TABLE Quarto;
--DROP TABLE Cliente;

CREATE TABLE Cliente (
	cpf CHAR(11),
	email VARCHAR(60) NOT NULL, 
	endereco VARCHAR(100) NOT NULL, 
	data_nascimento DATE NOT NULL,
	sexo CHAR(1) NOT NULL,
	nome VARCHAR(100) NOT NULL,

	PRIMARY KEY(cpf)
); 



CREATE TABLE Avaliacao (
	id INT GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
	nota NUMBER(2,0) NOT NULL,  
    data DATE NOT NULL,
	comentario VARCHAR(256) NOT NULL, 
	cpf_cliente CHAR(11) NOT NULL,

	FOREIGN KEY(cpf_cliente) REFERENCES Cliente (cpf)
);


CREATE TABLE Funcionario (
	cpf CHAR(11),
	data_nascimento DATE NOT NULL,
	nome VARCHAR(100) NOT NULL,
	salario NUMERIC(10,2) NOT NULL, 
	funcao VARCHAR(60) NOT NULL,

	PRIMARY KEY(cpf)
);


CREATE TABLE Quarto (
	numero INT,
	tipo VARCHAR(15) NOT NULL,
	vista VARCHAR(7) NOT NULL,
	diaria NUMERIC(8,2) NOT NULL, 
   
	PRIMARY KEY(numero)
);



CREATE TABLE Produto (
	id INT GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
	tipo VARCHAR(10) NOT NULL,
	valor NUMBER(5,2) NOT NULL,
	nome VARCHAR(30) NOT NULL,
	descricao VARCHAR(100) NOT NULL
);




CREATE TABLE Dependente (
	cpf CHAR(11),
	cpf_cliente CHAR(11),
	data_nascimento DATE NOT NULL,
	nome VARCHAR(30) NOT NULL,

	PRIMARY KEY(cpf, cpf_cliente),
	FOREIGN KEY(cpf_cliente) REFERENCES Cliente (cpf)
);



CREATE TABLE Telefone (
	telefone VARCHAR(15),
	cpf_cliente CHAR(11),

	PRIMARY KEY(telefone , cpf_cliente),
	FOREIGN KEY(cpf_cliente) REFERENCES Cliente (cpf)

);




CREATE TABLE Equipamento (
	nome_equipamento VARCHAR(10),
	numero_quarto INT,

    PRIMARY KEY(nome_equipamento, numero_quarto),
	FOREIGN KEY(numero_quarto) REFERENCES Quarto (numero)

);

CREATE TABLE Hospedagem(
    cpf_cliente CHAR(11),
    num_quarto INT,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    
    PRIMARY KEY(cpf_cliente, num_quarto),
    FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
    FOREIGN KEY (num_quarto) REFERENCES Quarto(numero)
    
);

CREATE TABLE Reserva(
    cpf_cliente CHAR(11),
    num_quarto INT,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    
    PRIMARY KEY(cpf_cliente, num_quarto),
    FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
    FOREIGN KEY (num_quarto) REFERENCES Quarto(numero)
    
);

CREATE TABLE Manuntencao(
    cpf_funcionario CHAR(11),
    num_quarto INT,
    data DATE NOT NULL,
    tipo VARCHAR(15) NOT NULL,
    observacao VARCHAR(240) NOT NULL,
    
    PRIMARY KEY(cpf_funcionario, num_quarto),
    FOREIGN KEY (cpf_funcionario) REFERENCES Funcionario(cpf),
    FOREIGN KEY (num_quarto) REFERENCES Quarto(numero)    
);

CREATE TABLE Venda(
    id_produto INT,
    numero_quarto INT,
    data DATE NOT NULL,
    quantidade INT NOT NULL,
    
    PRIMARY KEY(id_produto, numero_quarto),
    FOREIGN KEY (id_produto) REFERENCES Produto(id),
    FOREIGN KEY (numero_quarto) REFERENCES Quarto(numero)
);