CREATE TABLE Banco(
    nrobanco int,
    cnpj varchar(11),
    cep varchar(8),
    estado varchar(2),
    logradouro varchar(200),
    nro int,
    compl varchar(200),

    CONSTRAINT PK_BANCO PRIMARY KEY(nrobanco)
);

CREATE TABLE Agencia(
    nroagencia int,
    nrobanco int,
    cidade varchar(100),

    CONSTRAINT FK_BANCO FOREIGN KEY(nrobanco) REFERENCES Banco(nrobanco),
    CONSTRAINT PK_AGENCIA PRIMARY KEY(nroagencia,nrobanco)
);

CREATE TABLE Conta(
    nroconta int,
    nroagencia int,
    nrobanco int,
    gerente varchar(200),

    CONSTRAINT FK_AGENCIA FOREIGN KEY(nroagencia, nrobanco) REFERENCES Agencia(nroagencia, nrobanco),
    CONSTRAINT PK_CONTA PRIMARY KEY(nroconta, nrobanco, nroagencia)
);

CREATE TABLE Corrente(
    nroconta int,
    nroagencia int,
    nrobanco int,
    limite float,

    CONSTRAINT FK_CONTA FOREIGN KEY(nroconta, nroagencia, nrobanco) REFERENCES Conta(nroconta, nroagencia, nrobanco),
    CONSTRAINT PK_CORRENTE PRIMARY KEY(nroconta, nroagencia, nrobanco)
);

CREATE TABLE Poupanca(
    nroconta int,
    nroagencia int,
    nrobanco int,
    aniversario Date,

    CONSTRAINT FK_CONTA FOREIGN KEY(nroconta, nroagencia, nrobanco) REFERENCES Conta(nroconta, nroagencia, nrobanco),
    CONSTRAINT PK_POUPANCA PRIMARY KEY(nroconta, nroagencia, nrobanco)
);

CREATE TABLE Cliente(
    cpf varchar(11),
    email varchar(100),
    pnome varchar(50),
    sobrenome varchar(150),

    CONSTRAINT PK_CLIENTE PRIMARY KEY(cpf)
);

CREATE TABLE ClienteConta(
    cpf varchar(11),
    nroconta int,
    nroagencia int,
    nrobanco int,
    titular,

    CONSTRAINT FK_CONTA FOREIGN KEY(nroconta, nroagencia, nrobanco) REFERENCES Conta(nroconta, nroagencia, nrobanco),
    CONSTRAINT FK_CLIENTE FOREIGN KEY(cpf) REFERENCES Cliente(cpf),
    CONSTRAINT PK_CLIENTECONTA PRIMARY KEY(cpf, nroconta, nroagencia, nrobanco)
);

CREATE TABLE Correntista(
    cpf varchar(11),
    nroconta int,
    nroagencia int,
    nrobanco int,

    CONSTRAINT FK_CONTA FOREIGN KEY(nroconta, nroagencia, nrobanco) REFERENCES Conta(nroconta, nroagencia, nrobanco),
    CONSTRAINT FK_CLIENTE FOREIGN KEY(cpf) REFERENCES Cliente(cpf),
    CONSTRAINT PK_CORRENTISTA PRIMARY KEY(cpf, nroconta, nroagencia, nrobanco)
);

CREATE TABLE Movimentacao(
    datahora timestamp,
    cpf varchar(11),
    nroconta int,
    nroagencia int,
    nrobanco int,
    valor float,
    tipo varchar(50);

    CONSTRAINT FK_CORRENTISTA FOREIGN KEY(cpf, nroconta, nroagencia, nrobanco) REFERENCES Correntista(cpf, nroconta, nroagencia, nrobanco),
    CONSTRAINT PK_MOVIMENTACAO PRIMARY KEY(datahora, nroconta, nroagencia, nrobanco)
);
