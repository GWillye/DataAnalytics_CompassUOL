-- Tabela de Dimensão Ator
CREATE TABLE DimAtor (
    generoArtista TEXT,
    nomeArtista TEXT PRIMARY KEY,
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
    nomeArtista TEXT,
    idObra TEXT,
    personagem TEXT,
    PRIMARY KEY (nomeArtista, idObra),
    FOREIGN KEY (nomeArtista) REFERENCES DimAtor(nomeArtista),
    FOREIGN KEY (idObra) REFERENCES DimObra(id)
);
