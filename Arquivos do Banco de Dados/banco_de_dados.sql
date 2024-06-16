-- Criação da tabela CIDADES
CREATE TABLE CIDADES (
    COD_CIDADE INT PRIMARY KEY IDENTITY,
    CID_NOME NVARCHAR(50) NOT NULL,
    CID_ESTADO NVARCHAR(50) NOT NULL,
    CID_CEP_INICIAL INT NOT NULL,
    CID_CEP_FINAL INT NOT NULL
);


-- Criação da tabela CLIENTES
CREATE TABLE CLIENTES (
    COD_CLIENTE INT PRIMARY KEY IDENTITY,
    CLI_CPF NVARCHAR(15) NOT NULL,
    CLI_NOME NVARCHAR(50) NOT NULL,
    CLI_TELEFONE NVARCHAR(15) NOT NULL,
    CLI_ENDERECO NVARCHAR(50) NOT NULL,
    CLI_BAIRRO NVARCHAR(50) NOT NULL,
    CLI_COMPLEMENTO NVARCHAR(50),
    CLI_EMAIL NVARCHAR(100) NOT NULL,
    COD_CIDADE INT NOT NULL,
    CLI_CEP INT NOT NULL,
    CONSTRAINT FK_COD_CIDADE FOREIGN KEY (COD_CIDADE) REFERENCES CIDADES(COD_CIDADE)
);


-- Inserção de registros na tabela CIDADES
INSERT INTO CIDADES (CID_NOME, CID_ESTADO, CID_CEP_INICIAL, CID_CEP_FINAL) VALUES
('São Paulo',		'SP', 10000000, 19999999),
('Rio de Janeiro',	'RJ', 20000000, 29999999),
('Belo Horizonte',	'MG', 30000000, 39999999),
('Porto Alegre',	'RS', 40000000, 49999999),
('Curitiba',		'PR', 50000000, 59999999),
('Fortaleza',		'CE', 60000000, 69999999),
('Salvador',		'BA', 60000000, 69999999),
('Brasília',		'DF', 70000000, 79999999),
('Recife',		'PE', 80000000, 89999999),
('Manaus',		'AM', 90000000, 99999999);


-- Inserção de registros na tabela CLIENTES
INSERT INTO CLIENTES (CLI_CPF, CLI_NOME, CLI_TELEFONE, CLI_ENDERECO, CLI_BAIRRO, CLI_COMPLEMENTO, CLI_EMAIL, COD_CIDADE, CLI_CEP) VALUES
('111.111.111-11', 'Cliente Um', '11911111111', 'Rua Um, 100', 'Bairro A', 'Apto 101', 'cliente1@example.com', 1, 11000000),
('111.111.111-12', 'Cliente Dois', '11911111112', 'Rua Dois, 200', 'Bairro B', 'Apto 202', 'cliente2@example.com', 1, 12000000),
('222.222.222-21', 'Cliente Três', '21922222221', 'Rua Três, 300', 'Bairro C', 'Apto 303', 'cliente3@example.com', 2, 21000000),
('222.222.222-22', 'Cliente Quatro', '21922222222', 'Rua Quatro, 400', 'Bairro D', 'Apto 404', 'cliente4@example.com', 2, 22000000),
('333.333.333-31', 'Cliente Cinco', '31933333331', 'Rua Cinco, 500', 'Bairro E', 'Apto 505', 'cliente5@example.com', 3, 31000000),
('333.333.333-32', 'Cliente Seis', '31933333332', 'Rua Seis, 600', 'Bairro F', 'Apto 606', 'cliente6@example.com', 3, 32000000),
('444.444.444-41', 'Cliente Sete', '41944444441', 'Rua Sete, 700', 'Bairro G', 'Apto 707', 'cliente7@example.com', 4, 91000000),
('444.444.444-42', 'Cliente Oito', '41944444442', 'Rua Oito, 800', 'Bairro H', 'Apto 808', 'cliente8@example.com', 4, 92000000),
('555.555.555-51', 'Cliente Nove', '51955555551', 'Rua Nove, 900', 'Bairro I', 'Apto 909', 'cliente9@example.com', 5, 81000000),
('555.555.555-52', 'Cliente Dez', '51955555552', 'Rua Dez, 1000', 'Bairro J', 'Apto 1001', 'cliente10@example.com', 5, 82000000),
('666.666.666-61', 'Cliente Onze', '61966666661', 'Avenida Onze, 1100', 'Bairro K', 'Casa 1101', 'cliente11@example.com', 6, 61000000),
('666.666.666-62', 'Cliente Doze', '61966666662', 'Avenida Doze, 1200', 'Bairro L', 'Casa 1202', 'cliente12@example.com', 6, 62000000),
('777.777.777-71', 'Cliente Treze', '71977777771', 'Avenida Treze, 1300', 'Bairro M', 'Casa 1303', 'cliente13@example.com', 7, 41000000),
('777.777.777-72', 'Cliente Quatorze', '71977777772', 'Avenida Quatorze, 1400', 'Bairro N', 'Casa 1404', 'cliente14@example.com', 7, 42000000),
('888.888.888-81', 'Cliente Quinze', '81988888881', 'Avenida Quinze, 1500', 'Bairro O', 'Casa 1505', 'cliente15@example.com', 8, 71000000),
('888.888.888-82', 'Cliente Dezesseis', '81988888882', 'Avenida Dezesseis, 1600', 'Bairro P', 'Casa 1606', 'cliente16@example.com', 8, 72000000),
('999.999.999-91', 'Cliente Dezessete', '91999999991', 'Avenida Dezessete, 1700', 'Bairro Q', 'Casa 1707', 'cliente17@example.com', 9, 51000000),
('999.999.999-92', 'Cliente Dezoito', '91999999992', 'Avenida Dezoito, 1800', 'Bairro R', 'Casa 1808', 'cliente18@example.com', 9, 52000000),
('000.000.000-01', 'Cliente Dezenove', '31900000001', 'Avenida Dezenove, 1900', 'Bairro S', 'Casa 1909', 'cliente19@example.com', 10, 69000000),
('000.000.000-02', 'Cliente Vinte', '31900000002', 'Avenida Vinte, 2000', 'Bairro T', 'Casa 2001', 'cliente20@example.com', 10, 69500000);

