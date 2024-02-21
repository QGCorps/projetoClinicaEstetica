CREATE DATABASE clinica_estetica; 

CREATE TABLE pessoa (
    id_pessoa INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    nome_pessoa VARCHAR(50) NOT NULL, 
    telefone BIGINT NOT NULL, 
    endereco VARCHAR(100) NOT NULL,
	bairro VARCHAR(25) NOT NULL,
    cpf BIGINT NOT NULL,
    data_nascimento DATE NOT NULL, 
    tipo VARCHAR(20) NOT NULL,
    observacoes VARCHAR(1000) NOT NULL
);

CREATE TABLE compromisso (
    id_compromisso INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_cliente VARCHAR(50) NOT NULL, 
    data DATETIME NOT NULL, 
    hora DATETIME NOT NULL, 
    status VARCHAR(10) NOT NULL, 
    id_pessoa INT NOT NULL, 
    FOREIGN KEY (id_pessoa) REFERENCES pessoa (id_pessoa)
);

CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    nome_servico VARCHAR(50) NOT NULL,
    valor_servico DECIMAL(4,2) NOT NULL, 
    tempo INT NOT NULL, 
    imagem VARCHAR(30) NOT NULL, 
    tipo VARCHAR(20) NOT NULL, 
    forma_pagto VARCHAR(30) NOT NULL
);


CREATE TABLE pacotes (
	id_pacote INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
	nome VARCHAR(30) NOT NULL, 
	qtde_sessao INT NOT NULL,
	observacao VARCHAR(50) NOT NULL, 
	valor_pacote Decimal (5,2) NOT NULL,
	id_servico INT AUTO_INCREMENT NOT NULL,
	FOREIGN KEY (id_servico) REFERENCES servico (id_servico)
);

CREATE TABLE prestar (
    id_prestar INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    status VARCHAR(10) NOT NULL,
    situacao VARCHAR(20) NOT NULL,
    id_compromisso INT NOT NULL, 
    id_servico INT NOT NULL, 
    FOREIGN KEY (id_compromisso) REFERENCES compromisso (id_compromisso), 
    FOREIGN KEY (id_servico) REFERENCES servico (id_servico)
);

INSERT INTO pessoa (nome_pessoa, telefone, endereco, bairro, cpf, data_nascimento, tipo, observacao) VALUES
(); 

INSERT INTO compromisso (nome_cliente, data_compromisso, hora, status_compromisso,id_pessoa) VALUES 
(); 

INSERT INTO servico (nome_servico, valor_servico, tempo, imagem, tipo, forma_pagto) VALUES 
('Aplicação de Fibra de Vidro', 210.00, '3:00','Imagem 1', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Manutenção de Fibra de Vidro', 110.00, '1:30','Imagem 2', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Manutenção (de outra Profissional)', 140.00,'2:30', 'Imagem 3', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Concerto de Unha', 10.00, '0:15','Imagem 4', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Blindagem', 80.00, 'Imagem 5', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Banho de Gel ', 110.00, 'Imagem 6', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Banho de Fibra', 110.00, 'Imagem 7', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Esmaltação em Gel', 60.00, 'Imagem 8', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Remoção', 80.00, 'Imagem 9', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Baby Boomer', 70.00, 'Imagem 10', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Francesa Reversa', 70.00, 'Imagem 11', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Decoração Completa', 50.00, 'Imagem 12', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Decoração Individual', 10.00, 'Imagem 13', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Diminuição de comprimento', 20.00, 'Imagem 14', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Limpeza da Unha Natural', 20.00, 'Imagem 15', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Troca de Formato (Reposição de Fibra)', 50.00, 'Imagem 16', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Massagem Relaxante', 90.00, '1:15','Imagem 17', 'Estética', 'Débito, Crédito,Pix e Dinheiro'), 
('Drenagem Linfática', 90.00, '1:15', 'Imagem 18', 'Estética', 'Débito, Crédito,Pix e Dinheiro'), 
('Limpeza de Pele', 90.00, '1:30','Imagem 19', 'Estética', 'Débito, Crédito,Pix e Dinheiro'); 

INSERT INTO pacotes (nome, qtde_sessao, observacao, valor_pacote) VALUES 
('Massagem Relaxante', 4, '1 por semana (75.00 cada)', 300.00),
('Massagem Relaxante', 8, '2 por semana (70,00 cada)', 560.00),
('Massagem Relaxante', 12, '3 por semana (65,00 cada)', 780.00),
('Drenagem Linfática', 4, '1 por semana (75.00 cada)', 300.00),
('Drenagem Linfática', 8, '2 por semana (70,00 cada)', 560.00),
('Drenagem Linfática', 12, '3 por semana (65,00 cada)', 780.00); 

INSERT INTO prestar (status_compromisso, situacao, id_compromisso, id_servico) VALUES 
(); 