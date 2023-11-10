-- TABLE
CREATE TABLE Carro (
    idCarro INTEGER PRIMARY KEY,
    kmCarro INTEGER,
    classiCarro TEXT,
    marcaCarro TEXT,
    modeloCarro TEXT,
    anoCarro INTEGER,
    idcombustivel INTEGER,
    FOREIGN KEY (idcombustivel) REFERENCES Combustivel(idcombustivel)
);
CREATE TABLE Cliente (
    idCliente INTEGER,
    nomeCliente TEXT,
    cidadeCliente TEXT,
    estadoCliente TEXT,
    paisCliente TEXT
);
CREATE TABLE Combustivel (
    idcombustivel INTEGER,
    tipoCombustivel TEXT
);
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE Locacao (
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
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (idCarro) REFERENCES Carro(idCarro),
    FOREIGN KEY (idVendedor) REFERENCES Vendedor(idVendedor)
);
CREATE TABLE Vendedor (
    idVendedor INTEGER ,
    nomeVendedor TEXT,
    sexoVendedor INTEGER,
    estadoVendedor TEXT
);

-- Inserir dados na tabela Combustivel
INSERT INTO Combustivel (idcombustivel, tipoCombustivel)
VALUES
    (1, 'Gasolina'),
    (2, 'Etanol'),
    (3, 'Flex'),
    (4, 'Diesel');

-- Inserir dados na tabela Cliente
INSERT INTO Cliente (idCliente, nomeCliente, cidadeCliente, estadoCliente, paisCliente)
VALUES
    (2, 'Cliente dois', 'São Paulo', 'São Paulo', 'Brasil'),
    (3, 'Cliente tres', 'Rio de Janeiro', 'Rio de Janeiro', 'Brasil'),
    (4, 'Cliente quatro', 'Rio de Janeiro', 'Rio de Janeiro', 'Brasil'),
    (5, 'Cliente cinco', 'Manaus', 'Amazonas', 'Brasil'),
    (6, 'Cliente seis', 'Belo Horizonte', 'Minas Gerais', 'Brasil'),
    (10, 'Cliente dez', 'Rio Branco', 'Acre', 'Brasil'),
    (20, 'Cliente vinte', 'Macapá', 'Amapá', 'Brasil'),
    (22, 'Cliente vinte e dois', 'Porto Alegre', 'Rio Grande do Sul', 'Brasil'),
    (23, 'Cliente vinte e tres', 'Eusébio', 'Ceará', 'Brasil'),
    (26, 'Cliente vinte e seis', 'Campo Grande', 'Mato Grosso do Sul', 'Brasil');

-- Inserir dados na tabela Vendedor
INSERT INTO Vendedor (idVendedor, nomeVendedor, sexoVendedor, estadoVendedor)
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
INSERT INTO Carro (idCarro, kmCarro, classiCarro, marcaCarro, modeloCarro, anoCarro, idcombustivel)
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

-- Inserir dados na tabela Locacao
INSERT INTO Locacao (idLocacao, idCliente, idCarro, idVendedor, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega)
VALUES
    (1, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente dois' AND cidadeCliente = 'São Paulo' AND estadoCliente = 'São Paulo' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Fiat' AND modeloCarro = 'Fiat Uno' AND anoCarro = 2000),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor cinco' AND estadoVendedor = 'São Paulo'),
         20150110, '10:00', 2, 100, 20150112, '10:00'),
    (2, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente dois' AND cidadeCliente = 'São Paulo' AND estadoCliente = 'São Paulo' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Fiat' AND modeloCarro = 'Fiat Uno' AND anoCarro = 2000),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor cinco' AND estadoVendedor = 'São Paulo'),
         20150210, '12:00', 2, 100, 20150212, '12:00'),
    (3, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente tres' AND cidadeCliente = 'Rio de Janeiro' AND estadoCliente = 'Rio de Janeiro' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Fiat' AND modeloCarro = 'Fiat Palio' AND anoCarro = 2010),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedora seis' AND estadoVendedor = 'São Paulo'),
         20150213, '12:00', 2, 150, 20150215, '12:00'),
    (4, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente quatro' AND cidadeCliente = 'Rio de Janeiro' AND estadoCliente = 'Rio de Janeiro' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Fiat' AND modeloCarro = 'Fiat Palio' AND anoCarro = 2010),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedora seis' AND estadoVendedor = 'São Paulo'),
         20150215, '13:00', 5, 150, 20150220, '13:00'),
    (5, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente quatro' AND cidadeCliente = 'Rio de Janeiro' AND estadoCliente = 'Rio de Janeiro' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Fiat' AND modeloCarro = 'Fiat Palio' AND anoCarro = 2010),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedora sete' AND estadoVendedor = 'Rio de Janeiro'),
         20150302, '14:00', 5, 150, 20150307, '14:00'),
    (6, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente seis' AND cidadeCliente = 'Belo Horizonte' AND estadoCliente = 'Minas Gerais' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'VW' AND modeloCarro = 'Fusca 78' AND anoCarro = 1978),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedora oito' AND estadoVendedor = 'Minas Gerais'),
         20160302, '14:00', 10, 250, 20160312, '14:00'),
    (7, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente seis' AND cidadeCliente = 'Belo Horizonte' AND estadoCliente = 'Minas Gerais' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'VW' AND modeloCarro = 'Fusca 78' AND anoCarro = 1978),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedora oito' AND estadoVendedor = 'Minas Gerais'),
         20160802, '14:00', 10, 250, 20160812, '14:00'),
    (8, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente quatro' AND cidadeCliente = 'Rio de Janeiro' AND estadoCliente = 'Rio de Janeiro' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'VW' AND modeloCarro = 'Fusca 78' AND anoCarro = 1978),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedora seis' AND estadoVendedor = 'São Paulo'),
         20170102, '18:00', 10, 250, 20170112, '18:00'),
    (9, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente quatro' AND cidadeCliente = 'Rio de Janeiro' AND estadoCliente = 'Rio de Janeiro' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'VW' AND modeloCarro = 'Fusca 78' AND anoCarro = 1978),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedora seis' AND estadoVendedor = 'São Paulo'),
         20180102, '18:00', 10, 280, 20180112, '18:00');
-- Inserir dados adicionais na tabela Locacao
INSERT INTO Locacao (idLocacao, idCliente, idCarro, idVendedor, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega)
VALUES
    (10, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente dez' AND cidadeCliente = 'Rio Branco' AND estadoCliente = 'Acre' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Fiat' AND modeloCarro = 'Fiat 147' AND anoCarro = 1996),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor dezesseis' AND estadoVendedor = 'Amazonas'),
         20180302, '18:00', 10, 50, 20180312, '18:00'),
    (11, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte' AND cidadeCliente = 'Macapá' AND estadoCliente = 'Amapá' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Fiat' AND modeloCarro = 'Fiat 147' AND anoCarro = 1996),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor dezesseis' AND estadoVendedor = 'Amazonas'),
         20180401, '11:00', 10, 50, 20180411, '11:00'),
    (12, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte' AND cidadeCliente = 'Macapá' AND estadoCliente = 'Amapá' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2019),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor dezesseis' AND estadoVendedor = 'Amazonas'),
         20200401, '11:00', 10, 150, 20200411, '11:00'),
    (13, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte e dois' AND cidadeCliente = 'Porto Alegre' AND estadoCliente = 'Rio Grande do Sul' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2019),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor trinta' AND estadoVendedor = 'Rio Grande do Sul'),
         20220501, '8:00', 20, 150, 20220521, '18:00'),
    (14, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte e dois' AND cidadeCliente = 'Porto Alegre' AND estadoCliente = 'Rio Grande do Sul' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2019),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor trinta' AND estadoVendedor = 'Rio Grande do Sul'),
         20220601, '8:00', 20, 150, 20220621, '18:00'),
    (15, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte e dois' AND cidadeCliente = 'Porto Alegre' AND estadoCliente = 'Rio Grande do Sul' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2019),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor trinta' AND estadoVendedor = 'Rio Grande do Sul'),
         20220701, '8:00', 20, 150, 20220721, '18:00'),
    (16, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte e dois' AND cidadeCliente = 'Porto Alegre' AND estadoCliente = 'Rio Grande do Sul' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2019),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor trinta' AND estadoVendedor = 'Rio Grande do Sul'),
         20220801, '8:00', 20, 150, 20220721, '18:00'),
    (17, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte e tres' AND cidadeCliente = 'Eusébio' AND estadoCliente = 'Ceará' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2020),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor trinta e um' AND estadoVendedor = 'Ceará'),
         20220901, '8:00', 20, 150, 20220921, '18:00'),
    (18, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte e tres' AND cidadeCliente = 'Eusébio' AND estadoCliente = 'Ceará' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2020),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor trinta e um' AND estadoVendedor = 'Ceará'),
         20221001, '8:00', 20, 150, 20221021, '18:00'),
    (19, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte e tres' AND cidadeCliente = 'Eusébio' AND estadoCliente = 'Ceará' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Versa' AND anoCarro = 2020),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor trinta e um' AND estadoVendedor = 'Ceará'),
         20221101, '8:00', 20, 150, 20221121, '18:00'),
    (20, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente cinco' AND cidadeCliente = 'Manaus' AND estadoCliente = 'Amazonas' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Toyota' AND modeloCarro = 'Corolla XEI' AND anoCarro = 2023),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor dezesseis' AND estadoVendedor = 'Amazonas'),
         20230102, '18:00', 10, 880, 20230112, '18:00'),
    (21, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente cinco' AND cidadeCliente = 'Manaus' AND estadoCliente = 'Amazonas' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Toyota' AND modeloCarro = 'Corolla XEI' AND anoCarro = 2023),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedor dezesseis' AND estadoVendedor = 'Amazonas'),
         20230115, '18:00', 10, 880, 20230125, '18:00'),
    (22, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte e seis' AND cidadeCliente = 'Campo Grande' AND estadoCliente = 'Mato Grosso do Sul' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Frontier' AND anoCarro = 2022),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedora trinta e dois' AND estadoVendedor = 'Mato Grosso do Sul'),
         20230125, '8:00', 5, 600, 20230130, '18:00'),
    (23, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte e seis' AND cidadeCliente = 'Campo Grande' AND estadoCliente = 'Mato Grosso do Sul' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Frontier' AND anoCarro = 2022),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedora trinta e dois' AND estadoVendedor = 'Mato Grosso do Sul'),
         20230131, '8:00', 5, 600, 20230205, '18:00'),
    (24, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte e seis' AND cidadeCliente = 'Campo Grande' AND estadoCliente = 'Mato Grosso do Sul' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Frontier' AND anoCarro = 2022),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedora trinta e dois' AND estadoVendedor = 'Mato Grosso do Sul'),
         20230206, '8:00', 5, 600, 20230211, '18:00'),
    (25, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte e seis' AND cidadeCliente = 'Campo Grande' AND estadoCliente = 'Mato Grosso do Sul' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Frontier' AND anoCarro = 2022),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedora trinta e dois' AND estadoVendedor = 'Mato Grosso do Sul'),
         20230212, '8:00', 5, 600, 20230217, '18:00'),
    (26, (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Cliente vinte e seis' AND cidadeCliente = 'Campo Grande' AND estadoCliente = 'Mato Grosso do Sul' AND paisCliente = 'Brasil'),
         (SELECT idCarro FROM Carro WHERE marcaCarro = 'Nissan' AND modeloCarro = 'Frontier' AND anoCarro = 2022),
         (SELECT idVendedor FROM Vendedor WHERE nomeVendedor = 'Vendedora trinta e dois' AND estadoVendedor = 'Mato Grosso do Sul'),
         20230218, '8:00', 1, 600, 20230219, '18:00');
