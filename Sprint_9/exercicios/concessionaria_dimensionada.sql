-- Tabelas de Dimensões
CREATE TABLE DimCarro (
    idCarro INTEGER PRIMARY KEY,
    kmCarro INTEGER,
    classiCarro TEXT,
    marcaCarro TEXT,
    modeloCarro TEXT,
    anoCarro INTEGER,
    idcombustivel INTEGER,
    FOREIGN KEY (idcombustivel) REFERENCES Combustivel(idcombustivel)
);

CREATE TABLE DimCliente (
    idCliente INTEGER,
    idEndereco INTEGER,
    nomeCliente TEXT,
    FOREIGN KEY (idEndereco) REFERENCES DimEndereco(idEndereco)
);

CREATE TABLE DimCombustivel (
    idcombustivel INTEGER PRIMARY KEY,
    tipoCombustivel TEXT
);

CREATE TABLE DimVendedor (
    idVendedor INTEGER PRIMARY KEY,
    nomeVendedor TEXT,
    sexoVendedor INTEGER,
    estadoVendedor TEXT
);

CREATE TABLE DimEndereco (
    idEndereco INTEGER PRIMARY KEY,
    paisCliente TEXT,
    estadoCliente TEXT,
    cidadeCliente TEXT
);

-- Tabela de Fatos
CREATE TABLE FatoLocacao (
    idLocacao INTEGER PRIMARY KEY,
    idCliente INTEGER,
    idCarro INTEGER,
    idVendedor INTEGER,
    dataLocacao INTEGER,
    horaLocacao TEXT,
    qtdDiaria INTEGER,
    vlrDiaria INTEGER,
    dataEntrega INTEGER,
    horaEntrega TEXT,
    FOREIGN KEY (idCliente) REFERENCES DimCliente(idCliente),
    FOREIGN KEY (idCarro) REFERENCES DimCarro(idCarro),
    FOREIGN KEY (idVendedor) REFERENCES DimVendedor(idVendedor)
);


-- Inserir dados na tabela Combustivel
INSERT INTO DimCombustivel (idcombustivel, tipoCombustivel)
VALUES
    (1, 'Gasolina'),
    (2, 'Etanol'),
    (3, 'Flex'),
    (4, 'Diesel');

-- Inserir dados na tabela DimEndereco
INSERT INTO DimEndereco (idEndereco, paisCliente, estadoCliente, cidadeCliente)
VALUES
    (1, 'Brasil', 'São Paulo', 'São Paulo'),
    (2, 'Brasil', 'Rio de Janeiro', 'Rio de Janeiro'),
    (3, 'Brasil', 'Rio de Janeiro', 'Rio de Janeiro'),
    (4, 'Brasil', 'Manaus', 'Amazonas'),
    (5, 'Brasil', 'Belo Horizonte', 'Minas Gerais'),
    (6, 'Brasil', 'Rio Branco', 'Acre'),
    (7, 'Brasil', 'Macapá', 'Amapá'),
    (8, 'Brasil', 'Porto Alegre', 'Rio Grande do Sul'),
    (9, 'Brasil', 'Eusébio', 'Ceará'),
    (10, 'Brasil', 'Campo Grande', 'Mato Grosso do Sul');

-- Inserir dados na tabela DimCliente
INSERT INTO DimCliente (idCliente, idEndereco, nomeCliente)
VALUES
    (2, 1, 'Cliente dois'),
    (3, 2, 'Cliente tres'),
    (4, 3, 'Cliente quatro'),
    (5, 4, 'Cliente cinco'),
    (6, 5, 'Cliente seis'),
    (10, 6, 'Cliente dez'),
    (20, 7, 'Cliente vinte'),
    (22, 8, 'Cliente vinte e dois'),
    (23, 9, 'Cliente vinte e tres'),
    (26, 10, 'Cliente vinte e seis');


-- Inserir dados na tabela Vendedor
INSERT INTO DimVendedor (idVendedor, nomeVendedor, sexoVendedor, estadoVendedor)
VALUES
    (5, 'Vendedor cinco', 0, 'São Paulo'),
    (6, 'Vendedora seis', 1, 'São Paulo'),
    (7, 'Vendedora sete', 1, 'Rio de Janeiro'),
    (8, 'Vendedora oito', 1, 'Minas Gerais'),
    (16, 'Vendedor dezesseis', 0, 'Amazonas'),
    (30, 'Vendedor trinta', 0, 'Rio Grande do Sul'),
    (31, 'Vendedor trinta e um', 0, 'Ceará'),
    (32, 'Vendedora trinta e dois', 1, 'Mato Grosso do Sul');

-- Inserir dados na tabela Carro
INSERT INTO DimCarro (idCarro, kmCarro, classiCarro, marcaCarro, modeloCarro, anoCarro, idcombustivel)
VALUES
    (98, 25412, 'AKJHKN98JY76539', 'Fiat', 'Fiat Uno', 2000, 1),
    (99, 20000, 'IKJHKN98JY76539', 'Fiat', 'Fiat Palio', 2010, 1),
    (3, 121700, 'DKSHKNS8JS76S39', 'VW', 'Fusca 78', 1978, 1),
    (10, 211800, 'LKIUNS8JS76S39', 'Fiat', 'Fiat 147', 1996, 1),
    (7, 212800, 'SSIUNS8JS76S39', 'Fiat', 'Fiat 147', 1996, 1),
    (6, 21800, 'SKIUNS8JS76S39', 'Nissan', 'Versa', 2019, 1),
    (2, 10000, 'AKIUNS1JS76S39', 'Nissan', 'Versa', 2019, 2),
    (4, 55000, 'LLLUNS1JS76S39', 'Nissan', 'Versa', 2020, 2),
    (1, 1800, 'AAAKNS8JS76S39', 'Toyota', 'Corolla XEI', 2023, 3),
    (5, 78000, 'MSLUNS1JS76S39', 'Nissan', 'Frontier', 2022, 4);

-- Inserir dados na tabela FatoLocacao
INSERT INTO FatoLocacao (idLocacao, idCliente, idCarro, idVendedor, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega)
VALUES
    (1, 2, 98, 5, 20150110, '10:00', 2, 100, 20150112, '10:00'),
    (2, 2, 98, 5, 20150210, '12:00', 2, 100, 20150212, '12:00'),
    (3, 3, 99, 6, 20150213, '12:00', 2, 150, 20150215, '12:00'),
    (4, 4, 99, 6, 20150215, '13:00', 5, 150, 20150220, '13:00'),
    (5, 4, 99, 7, 20150302, '14:00', 5, 150, 20150307, '14:00'),
    (6, 6, 3, 8, 20160302, '14:00', 10, 250, 20160312, '14:00'),
    (7, 6, 3, 8, 20160802, '14:00', 10, 250, 20160812, '14:00'),
    (8, 4, 3, 6, 20170102, '18:00', 10, 250, 20170112, '18:00'),
    (9, 4, 3, 6, 20180102, '18:00', 10, 280, 20180112, '18:00'),
    (10, 10, 10, 16, 20180302, '18:00', 10, 50, 20180312, '18:00'),
    (11, 20, 7, 16, 20180401, '11:00', 10, 50, 20180411, '11:00'),
    (12, 20, 6, 16, 20200401, '11:00', 10, 150, 20200411, '11:00'),
    (13, 22, 2, 30, 20220501, '8:00', 20, 150, 20220521, '18:00'),
    (14, (SELECT idCliente FROM DimCliente WHERE nomeCliente = 'Cliente vinte e dois'),
         (SELECT idCarro FROM DimCarro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2019),
         (SELECT idVendedor FROM DimVendedor WHERE nomeVendedor = 'Vendedor trinta' AND estadoVendedor = 'Rio Grande do Sul'),
         20220601, '8:00', 20, 150, 20220621, '18:00'),
    (15, (SELECT idCliente FROM DimCliente WHERE nomeCliente = 'Cliente vinte e dois'),
         (SELECT idCarro FROM DimCarro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2019),
         (SELECT idVendedor FROM DimVendedor WHERE nomeVendedor = 'Vendedor trinta' AND estadoVendedor = 'Rio Grande do Sul'),
         20220701, '8:00', 20, 150, 20220721, '18:00'),
    (16, (SELECT idCliente FROM DimCliente WHERE nomeCliente = 'Cliente vinte e dois'),
         (SELECT idCarro FROM DimCarro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2019),
         (SELECT idVendedor FROM DimVendedor WHERE nomeVendedor = 'Vendedor trinta' AND estadoVendedor = 'Rio Grande do Sul'),
         20220801, '8:00', 20, 150, 20220721, '18:00'),
    (17, (SELECT idCliente FROM DimCliente WHERE nomeCliente = 'Cliente vinte e tres'),
         (SELECT idCarro FROM DimCarro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2020),
         (SELECT idVendedor FROM DimVendedor WHERE nomeVendedor = 'Vendedor trinta e um' AND estadoVendedor = 'Ceará'),
         20220901, '8:00', 20, 150, 20220921, '18:00'),
    (18, (SELECT idCliente FROM DimCliente WHERE nomeCliente = 'Cliente vinte e tres'),
         (SELECT idCarro FROM DimCarro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2020),
         (SELECT idVendedor FROM DimVendedor WHERE nomeVendedor = 'Vendedor trinta e um' AND estadoVendedor = 'Ceará'),
         20221001, '8:00', 20, 150, 20221021, '18:00'),
    (19, (SELECT idCliente FROM DimCliente WHERE nomeCliente = 'Cliente vinte e tres'),
         (SELECT idCarro FROM DimCarro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2020),
         (SELECT idVendedor FROM DimVendedor WHERE nomeVendedor = 'Vendedor trinta e um' AND estadoVendedor = 'Ceará'),
         20221101, '8:00', 20, 150, 20221121, '18:00'),
    (20, (SELECT idCliente FROM DimCliente WHERE nomeCliente = 'Cliente cinco'),
         (SELECT idCarro FROM DimCarro WHERE marcaCarro = 'Toyota' AND modeloCarro = 'Corolla XEI' AND anoCarro = 2023),
         (SELECT idVendedor FROM DimVendedor WHERE nomeVendedor = 'Vendedor dezesseis' AND estadoVendedor = 'Amazonas'),
         20230102, '18:00', 10, 880, 20230112, '18:00'),
    (21, (SELECT idCliente FROM DimCliente WHERE nomeCliente = 'Cliente cinco'),
         (SELECT idCarro FROM DimCarro WHERE marcaCarro = 'Toyota' AND modeloCarro = 'Corolla XEI' AND anoCarro = 2023),
         (SELECT idVendedor FROM DimVendedor WHERE nomeVendedor = 'Vendedor dezesseis' AND estadoVendedor = 'Amazonas'),
         20230115, '18:00', 10, 880, 20230125, '18:00'),
    (22, (SELECT idCliente FROM DimCliente WHERE nomeCliente = 'Cliente vinte e seis'),
         (SELECT idCarro FROM DimCarro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Frontier' AND anoCarro = 2022),
         (SELECT idVendedor FROM DimVendedor WHERE nomeVendedor = 'Vendedora trinta e dois' AND estadoVendedor = 'Mato Grosso do Sul'),
         20230125, '8:00', 5, 600, 20230130, '18:00'),
    (23, (SELECT idCliente FROM DimCliente WHERE nomeCliente = 'Cliente vinte e seis'),
         (SELECT idCarro FROM DimCarro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Frontier' AND anoCarro = 2022),
         (SELECT idVendedor FROM DimVendedor WHERE nomeVendedor = 'Vendedora trinta e dois' AND estadoVendedor = 'Mato Grosso do Sul'),
         20230131, '8:00', 5, 600, 20230205, '18:00'),
    (24, (SELECT idCliente FROM DimCliente WHERE nomeCliente = 'Cliente vinte e seis'),
         (SELECT idCarro FROM DimCarro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Frontier' AND anoCarro = 2022),
         (SELECT idVendedor FROM DimVendedor WHERE nomeVendedor = 'Vendedora trinta e dois' AND estadoVendedor = 'Mato Grosso do Sul'),
         20230206, '8:00', 5, 600, 20230211, '18:00'),
    (25,
     (SELECT idCliente FROM DimCliente WHERE nomeCliente = 'Cliente vinte e seis'),
     (SELECT idCarro FROM DimCarro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Frontier' AND anoCarro = 2022),
     (SELECT idVendedor FROM DimVendedor WHERE nomeVendedor = 'Vendedora trinta e dois' AND estadoVendedor = 'Mato Grosso do Sul'),
     20230212, '8:00', 5, 600, 20230217, '18:00'),
    (26,
     (SELECT idCliente FROM DimCliente WHERE nomeCliente = 'Cliente vinte e seis'),
     (SELECT idCarro FROM DimCarro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Frontier' AND anoCarro = 2022),
     (SELECT idVendedor FROM DimVendedor WHERE nomeVendedor = 'Vendedora trinta e dois' AND estadoVendedor = 'Mato Grosso do Sul'),
     20230218, '8:00', 1, 600, 20230219, '18:00');

