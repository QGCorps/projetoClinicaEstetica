CREATE DATABASE clinica_estetica;

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL, 
    telefone BIGINT NOT NULL, 
    endereco VARCHAR(100) NOT NULL,
	bairro VARCHAR(35) NOT NULL,
    complemento VARCHAR(60) NULL,
    cidade VARCHAR(50) NOT NULL,
    cpf BIGINT,
    data_nascimento DATE NOT NULL,
    observacao VARCHAR(1000), 
    email VARCHAR (50) NOT NULL, 
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE prestador (
    id_prestador INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_prestador VARCHAR(50) NOT NULL, 
    telefone BIGINT NOT NULL, 
    endereco VARCHAR(100) NOT NULL,
	bairro VARCHAR(35) NOT NULL,
    complemento VARCHAR(60) NULL,
    cidade VARCHAR(50) NOT NULL,
    cpf BIGINT,
    data_nascimento DATE NOT NULL,
    profissao VARCHAR(1000), 
    email VARCHAR (50) NOT NULL, 
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    nome_servico VARCHAR(50) NOT NULL,
    valor_servico DECIMAL(6,2) NOT NULL, 
    tempo TIME NOT NULL, 
    imagem VARCHAR(30) NULL, 
    tipo VARCHAR(20) NOT NULL
);

CREATE TABLE pacotes (
	id_pacote INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
	nome VARCHAR(30) NOT NULL, 
	qtde_sessao INT NOT NULL,
	observacao VARCHAR(50) NULL, 
	valor_pacote Decimal (5,2) NOT NULL,
    id_servico INT NOT NULL,
    FOREIGN KEY (id_servico) REFERENCES servico (id_servico)
);

CREATE TABLE compromisso (
    id_compromisso INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    data_compromisso DATE NOT NULL, 
    hora TIME NOT NULL, 
    status_compromisso VARCHAR(30) NOT NULL, 
    id_cliente INT NOT NULL, 
    id_servico INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
    FOREIGN KEY (id_servico) REFERENCES servico (id_servico)
);

CREATE TABLE agenda (
	id_agendamento INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_cliente INT NOT NULL, 
    id_compromisso INT NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
	FOREIGN KEY (id_compromisso) REFERENCES compromisso (id_compromisso)
);
CREATE TABLE prestado (
    id_prestado INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    status_prestado VARCHAR(20) NOT NULL,
    situacao VARCHAR(20) NOT NULL,
    forma_pagamento VARCHAR(50) NOT NULL,
    id_compromisso INT NOT NULL, 
    id_servico INT NOT NULL, 
    FOREIGN KEY (id_compromisso) REFERENCES compromisso (id_compromisso), 
    FOREIGN KEY (id_servico) REFERENCES servico (id_servico)
);
INSERT INTO cliente (nome, telefone, endereco, bairro, complemento, cidade, cpf, data_nascimento, observacao, email, senha) VALUES
('Ana Carolina Teixeira Reis', 011958249651,'Rua Gonçalves Dias, 2305', 'Jardim Primavera' ,'', 'Araraquara', 441834948-00,STR_TO_DATE('28-06-1994', '%d-%m-%Y'), '', '', ''), 
('Bruna Cardosa Brasil de Souza', 016988016608, 'Avenida Luiz Raia, 472', 'Vila Suconasa' ,'' , 'Araraquara', 36859371897,STR_TO_DATE('10-03-1988', '%d-%m-%Y'),'', '', ''),
('Charlene Ribeiro Cunha', 016997893111, 'Avenida Irmã Antonia de Arruda Camargo, 60' ,'Jardim Vale das Rosas' , '', 'Araraquara', 29619049861,STR_TO_DATE('12-10-1981', '%d-%m-%Y'), '', '', ''),
('Cleusa Montoro Stein', 016997827881, 'Avenida Pernambuco, 336', 'Jardim Brasil' ,'' , 'Araraquara', 27835371847,STR_TO_DATE('15-04-1963', '%d-%m-%Y') , '', '', ''),
('Cristiane Caetano', 016997127056, 'Avenida Doutor Miguel Couto, 122', 'Jardim Imperador' ,'' , 'Araraquara', 24593411807, STR_TO_DATE('28-02-1977', '%d-%m-%Y'),'', '', ''),
('Danielli Brasil Alves Pires', 016988647620, 'Avenida Dom Carlos Carmello, 371', 'Vila Suconasa', 'Apartamento 7, Bloco 03' , 'Araraquara', 36859371897,STR_TO_DATE('10-03-1988', '%d-%m-%Y') ,'', '', ''),
('Francieli Liboni Da Silva', 016996427447, 'Rua Zenaide Volpe Abjaudi, 143', 'São José' ,'' , 'Américo Brasiliense', 41293001805,STR_TO_DATE('15-06-1992', '%d-%m-%Y') ,'', '', ''),
('Giovana Carolina Da Silva', 016997514154, 'Rua Bento Aranha Do Amaral, 13', 'Vale do Sol' ,'' , 'Araraquara', 46356742828,STR_TO_DATE('26-11-1997', '%d-%m-%Y') , '', '', ''),
('Gislaine Cristina De Oliveira', 016993930873, 'Rua Luiz Alecio Sobrinho, 326', 'Jardim Maria Luiza II' ,'Condomínio Alto da Boa Vista' , 'Araraquara', 36663926870,STR_TO_DATE('18-05-1989', '%d-%m-%Y') ,'', '', ''),
('Jayne Pereira De Macedo', 016997117375, 'Avenida Votuporanga, 435', 'Jardim América' ,'' , 'Araraquara', 39387830870,STR_TO_DATE('19-03-1997', '%d-%m-%Y') , '', '', ''),
('Larissa Montoro Stein Barros', 016997757611, 'Avenida Nossa Senhora Das Graças, 563', 'Jardim Melhado' ,'' , 'Araraquara', 40897423828, STR_TO_DATE('15-01-1991', '%d-%m-%Y'), '', '', ''),
('Maísa Rosa Oliveira Seabra de Andrade', 03799844115, 'Rua Américo Brasiliense, 534', 'Vila Ferroviária' ,'' , 'Araraquara',0000000000,STR_TO_DATE('29-08-1973', '%d-%m-%Y') , '', '', ''),
('Mércia Sandrini Diogo', 016996099343, 'Rua Nívea Cunha Fenerich, 201', 'Jardim Dom Pedro I' ,'' , 'Araraquara', 39423763855,STR_TO_DATE('01-07-1990','%d-%m-%Y'), '', '', ''),
('Pâmela Tainá Cassiano', 016997949260, 'Avenida Dom Carlos Carmelo, 721', 'Jardim Botânico' ,'Apartamento 402, Bloco 07' , 'Araraquara', 44312966893,STR_TO_DATE('18-04-1996', '%d-%m-%Y') ,'', '', ''),
('Rafaela Del Rio', 016997697200, 'Rua João de Caires, 34', 'Vila Furlan' ,'' , 'Araraquara', 38502246860,STR_TO_DATE('29-03-2000', '%d-%m-%Y') , '', '', ''),
('Vitória Regolin Cayres', 016997228572, 'Rua das Magnólias, 250', 'Jardim das Magnólias' ,'' , 'Araraquara', 53893037845,STR_TO_DATE('19-06-2007', '%d-%m-%Y') , '', '', ''),
('Yasmin Rodrigues da Silva', 016997826931, 'Rua Gilda Renê Simplício, 137', 'Parque Residencial Vale do Sol' ,'' , 'Araraquara', 54115819820, STR_TO_DATE('12-12-2007', '%d-%m-%Y'),'', '', '');
INSERT INTO prestador (nome_prestador, telefone, endereco, bairro, complemento, cidade, cpf, data_nascimento, profissao, email,senha) VALUES
('Maria Julia Bueno Galé',016997158669, 'Rua Tupi,522', 'Centro', '', 'Araraquara', 42248214836, STR_TO_DATE('14-05-1994', '%d-%m-%Y'), 'Esteticista', '','');
INSERT INTO servico (nome_servico, valor_servico, tempo, imagem, tipo) VALUES 
('Aplicação de Fibra de Vidro', 220.00, '2:30','Imagem 1', 'Unha'),
('Manutenção de Fibra de Vidro', 120.00, '1:30','Imagem 2', 'Unha'),
('Manutenção (de outra Profissional)', 150.00,'2:30', 'Imagem 3', 'Unha'),
('Concerto de Unha', 20.00, '0:15','Imagem 4', 'Unha'),
('Blindagem', 90.00,'1:00', 'Imagem 5', 'Unha'),
('Banho de Gel ', 120.00, '1:30', 'Imagem 6', 'Unha'),
('Banho de Fibra', 120.00, '1:30', 'Imagem 7', 'Unha'),
('Esmaltação em Gel', 70.00, '1:00', 'Imagem 8', 'Unha'),
('Remoção Fibra', 80.00, '0:40', 'Imagem 9', 'Unha'),
('Remoção Esmalte em Gel', 40.00, '0:30', 'Imagem 9', 'Unha'),
('Decoração Completa', 60.00, '0:20', 'Imagem 12', 'Unha'),
('Decoração Individual', 20.00, '0:10', 'Imagem 13', 'Unha'),
('Retífica de comprimento', 30.00, '0:30', 'Imagem 14', 'Unha'),
('Limpeza da Unha Natural', 30.00, '0:10', 'Imagem 15', 'Unha'),
('Troca de Formato (Reposição de Fibra)', 60.00, '0:30', 'Imagem 16', 'Unha'),
('Aplicação e Esmaltação em Gel', 260.00, '3:00', 'Imagem 17', 'Unha'),
('Manutenção e Esmaltação em Gel', 160.00, '2:30', 'Imagem 18', 'Unha'),
('Blindagem e Esmaltação em Gel', 130.00, '1:30', 'Imagem 19', 'Unha'),
('Banho de Fibra e Esmaltação em Gel', 160.00, '2:30', 'Imagem 20', 'Unha'),
('Banho de Fibra e Esmaltação em Gel', 160.00, '2:30', 'Imagem 21', 'Unha'),
('Aplicação e Decoração Completa', 280.00, '3:00', 'Imagem 22', 'Unha'),
('Manutenção e Decoração Completa', 180.00, '2:00', 'Imagem 23', 'Unha'),
('Aplicação e Decoração Individual', 240.00, '2:45', 'Imagem 24', 'Unha'),
('Manutenção e Decoração Individual', 140.00, '1:45', 'Imagem 25', 'Unha'),
('Manutenção e Troca de Formato', 180.00, '2:00', 'Imagem 26', 'Unha'),
('Massagem Relaxante', 100.00, '1:15','Imagem 27', 'Estética'), 
('Drenagem Linfática', 100.00, '1:15', 'Imagem 28', 'Estética'), 
('Limpeza de Pele', 100.00, '1:30','Imagem 29', 'Estética'), 
('Maquiagem', 160.00, '1:30','Imagem 30', 'Estética'), 
('Sobrancelha sem Henna', 35.00, '1:00','Imagem 31', 'Estética'), 
('Sobrancelha com Henna', 45.00, '1:30','Imagem 32', 'Estética');
INSERT INTO pacotes (nome, qtde_sessao, observacao, valor_pacote, id_servico) VALUES 
('Massagem Relaxante', 4, '1 por semana (90.00 cada)', 360.00 , 26),
('Massagem Relaxante', 8, '2 por semana (80,00 cada)', 640.00, 26),
('Massagem Relaxante', 12, '3 por semana (70,00 cada)', 840.00, 26),
('Drenagem Linfática', 4, '1 por semana (90,00 cada)', 360.00, 27),
('Drenagem Linfática', 8, '2 por semana (80,00 cada)', 640.00, 27),
('Drenagem Linfática', 12, '3 por semana (70,00 cada)', 840.00, 27);
INSERT INTO compromisso (data_compromisso, hora, status_compromisso, id_cliente, id_servico) VALUES 
(STR_TO_DATE('03-10-2023', '%d-%m-%Y'), '18:00', 'aguardando confirmação', 2,1),
(STR_TO_DATE('06-10-2023', '%d-%m-%Y') , '15:00', 'aguardando confirmação', 6,2),
(STR_TO_DATE('20-10-2023', '%d-%m-%Y'), '9:00', 'aguardando confirmação', 1,4),
(STR_TO_DATE('20-10-2023', '%d-%m-%Y') , '16:30', 'aguardando confirmação', 7,10),
(STR_TO_DATE('21-10-2023', '%d-%m-%Y') , '13:30', 'aguardando confirmação', 10,12);

INSERT INTO prestado (status_prestado, situacao, forma_pagamento, id_compromisso, id_servico) VALUES 
('agendado', 'concluido', 'crédito', 1, 17),
('agendado', 'concluido', 'débito', 2, 1),
('agendado', 'concluido', 'dinheiro', 3, 26),
('agendado', 'concluido', 'pix', 4, 8),
('agendado', 'cancelado', 'crédito e pix', 5, 29);

INSERT INTO agenda (id_cliente, id_compromisso) VALUES
(1,3),
(3,1);
SELECT * FROM cliente;

SELECT * FROM prestador;
SELECT * FROM servico;
SELECT * FROM pacotes;
SELECT * FROM compromisso;
SELECT * FROM prestado;

SELECT * FROM agenda;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';

flush privileges;