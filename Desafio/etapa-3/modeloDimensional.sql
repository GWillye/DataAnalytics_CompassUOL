-- Tabela de Dimensão Ator
CREATE TABLE DimAtor (
    idAtor INTEGER PRIMARY KEY,
    generoArtista TEXT,
    nomeArtista TEXT,
    anoNascimento INTEGER,
    anoFalecimento INTEGER,
    profissao TEXT,
    titulosMaisConhecidos TEXT
);

-- Tabela de Dimensão Obra
CREATE TABLE DimObra (
    idObra TEXT PRIMARY KEY,
    tituloPincipal TEXT,
    tituloOriginal TEXT,
    anoLancamento INTEGER,
    tempoMinutos INTEGER,
    genero TEXT,
    notaMedia FLOAT,
    numeroVotos INTEGER
);

-- Tabela de Fatos Personagem
CREATE TABLE FatoPersonagem (
    idAtor INTEGER,
    idObra TEXT,
    personagem TEXT,
    PRIMARY KEY (idAtor, idObra),
    FOREIGN KEY (idAtor) REFERENCES DimAtor(idAtor),
    FOREIGN KEY (idObra) REFERENCES DimObra(id)
);
