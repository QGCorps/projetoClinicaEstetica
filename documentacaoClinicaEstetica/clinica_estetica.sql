CREATE DATABASE clinica_estetica;

CREATE TABLE pessoa (
    id_pessoa INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    nome_pessoa VARCHAR(50) NOT NULL, 
    telefone BIGINT NOT NULL, 
    endereco VARCHAR(100) NOT NULL,
	bairro VARCHAR(35) NOT NULL,
    complemento VARCHAR(60) NULL,
    cidade VARCHAR(50) NOT NULL,
    cpf BIGINT,
    data_nascimento VARCHAR(20) NOT NULL, 
    tipo VARCHAR(20) NOT NULL,
    observacao VARCHAR(1000), 
    email VARCHAR (50) NOT NULL, 
    senha VARCHAR(100) NOT NULL
);
   
CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    nome_servico VARCHAR(50) NOT NULL,
    valor_servico DECIMAL(6,2) NOT NULL, 
    tempo TIME NOT NULL, 
    imagem VARCHAR(30) NULL, 
    tipo VARCHAR(20) NOT NULL, 
    forma_pagto VARCHAR(30) NOT NULL,
    INDEX (nome_servico)
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
    nome_cliente VARCHAR(50) NOT NULL, 
    data_compromisso VARCHAR(20) NOT NULL, 
    hora VARCHAR(20) NOT NULL, 
    nome_servico VARCHAR(50) NOT NULL,
    id_pessoa INT NOT NULL, 
    status_compromisso VARCHAR(10) NOT NULL, 
    FOREIGN KEY (id_pessoa) REFERENCES pessoa (id_pessoa),
    FOREIGN KEY (nome_servico) REFERENCES servico (nome_servico)
);
 
CREATE TABLE prestar (
    id_prestar INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    status_prestar VARCHAR(20) NOT NULL,
    situacao VARCHAR(20) NOT NULL,
    id_compromisso INT NOT NULL, 
    id_servico INT NOT NULL, 
    FOREIGN KEY (id_compromisso) REFERENCES compromisso (id_compromisso), 
    FOREIGN KEY (id_servico) REFERENCES servico (id_servico)
);
 
INSERT INTO pessoa (nome_pessoa, telefone, endereco, bairro, complemento, cidade, cpf, data_nascimento, tipo, observacao, email, senha) VALUES
('Ana Carolina Teixeira Reis', 011958249651,'Rua Gonçalves Dias, 2305', 'Jardim Primavera' ,'', 'Araraquara', 441834948-00,'28-06-1994', 'cliente', '', '', ''), 
('Bruna Cardosa Brasil de Souza', 016988016608, 'Avenida Luiz Raia, 472', 'Vila Suconasa' ,'' , 'Araraquara', 36859371897, '10-03-1988', 'cliente','', '', ''),
('Charlene Ribeiro Cunha', 016997893111, 'Avenida Irmã Antonia de Arruda Camargo, 60' ,'Jardim Vale das Rosas' , '', 'Araraquara', 29619049861, '12-10-1981', 'cliente', '', '', ''),
('Cleusa Montoro Stein', 016997827881, 'Avenida Pernambuco, 336', 'Jardim Brasil' ,'' , 'Araraquara', 27835371847, '15-04-1963', 'cliente','', '', ''),
('Cristiane Caetano', 016997127056, 'Avenida Doutor Miguel Couto, 122', 'Jardim Imperador' ,'' , 'Araraquara', 24593411807, '28-02-1977', 'cliente','', '', ''),
('Danielli Brasil Alves Pires', 016988647620, 'Avenida Dom Carlos Carmello, 371', 'Vila Suconasa', 'Apartamento 7, Bloco 03' , 'Araraquara', 36859371897, '10-03-1988', 'cliente','', '', ''),
('Francieli Liboni Da Silva', 016996427447, 'Rua Zenaide Volpe Abjaudi, 143', 'São José' ,'' , 'Américo Brasiliense', 41293001805, '15-06-1992', 'cliente','', '', ''),
('Giovana Carolina Da Silva', 016997514154, 'Rua Bento Aranha Do Amaral, 13', 'Vale do Sol' ,'' , 'Araraquara', 46356742828, '26-11-1997', 'cliente','', '', ''),
('Gislaine Cristina De Oliveira', 016993930873, 'Rua Luiz Alecio Sobrinho, 326', 'Jardim Maria Luiza II' ,'Condomínio Alto da Boa Vista' , 'Araraquara', 36663926870, '18-05-1989', 'cliente','', '', ''),
('Jayne Pereira De Macedo', 016997117375, 'Avenida Votuporanga, 435', 'Jardim América' ,'' , 'Araraquara', 39387830870, '19-03-1997', 'cliente','', '', ''),
('Larissa Montoro Stein Barros', 016997757611, 'Avenida Nossa Senhora Das Graças, 563', 'Jardim Melhado' ,'' , 'Araraquara', 40897423828, '15-01-1991', 'cliente','', '', ''),
('Maísa Rosa Oliveira Seabra de Andrade', 03799844115, 'Rua Américo Brasiliense, 534', 'Vila Ferroviária' ,'' , 'Araraquara',0000000000, '29-08-1973', 'cliente','', '', ''),
('Mércia Sandrini Diogo', 016996099343, 'Rua Nívea Cunha Fenerich, 201', 'Jardim Dom Pedro I' ,'' , 'Araraquara', 39423763855, '01-07-1990', 'cliente','', '', ''),
('Pâmela Tainá Cassiano', 016997949260, 'Avenida Dom Carlos Carmelo, 721', 'Jardim Botânico' ,'Apartamento 402, Bloco 07' , 'Araraquara', 44312966893, '18-04-1996', 'cliente','', '', ''),
('Rafaela Del Rio', 016997697200, 'Rua João de Caires, 34', 'Vila Furlan' ,'' , 'Araraquara', 38502246860, '29-03-2000', 'cliente','', '', ''),
('Vitória Regolin Cayres', 016997228572, 'Rua das Magnólias, 250', 'Jardim das Magnólias' ,'' , 'Araraquara', 53893037845, '19-06-2007', 'cliente','', '', ''),
('Yasmin Rodrigues da Silva', 016997826931, 'Rua Gilda Renê Simplício, 137', 'Parque Residencial Vale do Sol' ,'' , 'Araraquara', 54115819820, '', 'cliente','', '', '');
 
INSERT INTO servico (nome_servico, valor_servico, tempo, imagem, tipo, forma_pagto) VALUES 
('Aplicação de Fibra de Vidro', 220.00, '2:30','Imagem 1', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Manutenção de Fibra de Vidro', 120.00, '1:30','Imagem 2', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Manutenção (de outra Profissional)', 150.00,'2:30', 'Imagem 3', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Concerto de Unha', 20.00, '0:15','Imagem 4', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Blindagem', 90.00,'1:00', 'Imagem 5', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Banho de Gel ', 120.00, '1:30', 'Imagem 6', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Banho de Fibra', 120.00, '1:30', 'Imagem 7', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Esmaltação em Gel', 70.00, '1:00', 'Imagem 8', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Remoção Fibra', 80.00, '0:40', 'Imagem 9', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Remoção Esmalte em Gel', 40.00, '0:30', 'Imagem 9', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Decoração Completa', 60.00, '0:20', 'Imagem 12', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Decoração Individual', 20.00, '0:10', 'Imagem 13', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Retífica de comprimento', 30.00, '0:30', 'Imagem 14', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Limpeza da Unha Natural', 30.00, '0:10', 'Imagem 15', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Troca de Formato (Reposição de Fibra)', 60.00, '0:30', 'Imagem 16', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Aplicação e Esmaltação em Gel', 260.00, '3:00', 'Imagem 17', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Manutenção e Esmaltação em Gel', 160.00, '2:30', 'Imagem 18', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Blindagem e Esmaltação em Gel', 130.00, '1:30', 'Imagem 19', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Banho de Fibra e Esmaltação em Gel', 160.00, '2:30', 'Imagem 20', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Banho de Fibra e Esmaltação em Gel', 160.00, '2:30', 'Imagem 21', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Aplicação e Decoração Completa', 280.00, '3:00', 'Imagem 22', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Manutenção e Decoração Completa', 180.00, '2:00', 'Imagem 23', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Aplicação e Decoração Individual', 240.00, '2:45', 'Imagem 24', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Manutenção e Decoração Individual', 140.00, '1:45', 'Imagem 25', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Manutenção e Troca de Formato', 180.00, '2:00', 'Imagem 26', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Massagem Relaxante', 100.00, '1:15','Imagem 27', 'Estética', 'Débito, Crédito,Pix e Dinheiro'), 
('Drenagem Linfática', 100.00, '1:15', 'Imagem 28', 'Estética', 'Débito, Crédito,Pix e Dinheiro'), 
('Limpeza de Pele', 100.00, '1:30','Imagem 29', 'Estética', 'Débito, Crédito,Pix e Dinheiro'), 
('Maquiagem', 160.00, '1:30','Imagem 30', 'Estética', 'Débito, Crédito,Pix e Dinheiro'), 
('Sobrancelha sem Henna', 35.00, '1:00','Imagem 31', 'Estética', 'Débito, Crédito,Pix e Dinheiro'), 
('Sobrancelha com Henna', 45.00, '1:30','Imagem 32', 'Estética', 'Débito, Crédito,Pix e Dinheiro');
 
INSERT INTO pacotes (nome, qtde_sessao, observacao, valor_pacote, id_servico) VALUES 
('Massagem Relaxante', 4, '1 por semana (75.00 cada)', 300.00 , 26),
('Massagem Relaxante', 8, '2 por semana (70,00 cada)', 560.00, 26),
('Massagem Relaxante', 12, '3 por semana (65,00 cada)', 780.00, 26),
('Drenagem Linfática', 4, '1 por semana (75.00 cada)', 300.00, 27),
('Drenagem Linfática', 8, '2 por semana (70,00 cada)', 560.00, 27),
('Drenagem Linfática', 12, '3 por semana (65,00 cada)', 780.00, 27);
 
INSERT INTO compromisso (nome_cliente, data_compromisso, hora, nome_servico, status_compromisso, id_pessoa) VALUES 
('Bruna Cardosa Brasil de Souza','03-10-2023', '18:00', 'Manutenção e Esmaltação em Gel', 'agendado', 2),
('Yasmin Rodrigues da Silva', '06-10-2023', '15:00', 'Aplicação de Fibra de Vidro', 'agendado', 17),
('Ana Carolina Teixeira Reis','20-10-2023', '9:00', 'Massagem Relaxante', 'agendado', 1),
('Francieli Liboni Da Silva', '20-10-2023', '16:30', 'Esmaltação em Gel', 'agendado', 7),
('Rafaela Del Rio', '21-10-2023', '13:30', 'Maquiagem', 'agendado', 15); 

INSERT INTO prestar (status_prestar, situacao, id_compromisso, id_servico) VALUES 
('agendado', 'aprovado', 1, 17),
('agendado', 'aprovado', 2, 1),
('agendado', 'aprovado', 3, 26),
('agendado', 'aprovado', 4, 8),
('agendado', 'aprovado', 5, 29);
 
SELECT * FROM pessoa;
 
SELECT * FROM servico;
 
SELECT * FROM pacotes;
 
SELECT * FROM compromisso;
 
SELECT * FROM prestar;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root'; 

flush privileges; 

DROP DATABASE clinica_estetica; 



