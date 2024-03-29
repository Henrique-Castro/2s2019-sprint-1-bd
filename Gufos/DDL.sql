CREATE DATABASE T_Gufos;
USE T_Gufos;
CREATE TABLE Categorias(
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(255) NOT NULL UNIQUE
);
CREATE TABLE Eventos(
	IdEvento INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(100) NOT NULL UNIQUE,
	Descricao TEXT NOT NULL,
	DataEvento DATETIME NOT NULL,
	Ativo BIT NOT NULL DEFAULT(0),
	Localizacao VARCHAR(255) NOT NULL,
	IdCategoria INT FOREIGN KEY REFERENCES Categorias(IdCategoria)
);
CREATE TABLE Permissoes (
	IdPermissao INT PRIMARY KEY IDENTITY NOT NULL,
	Permissao VARCHAR(40) NOT NULL UNIQUE
);
CREATE TABLE Usuarios(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(255) NOT NULL,
	Email VARCHAR(255) NOT NULL UNIQUE,
	Senha VARCHAR(50) NOT NULL,
	Permissao INT FOREIGN KEY REFERENCES Permissoes(IdPermissao) NOT NULL
);
CREATE TABLE Presenca(
	IdUsuario INT FOREIGN KEY REFERENCES Usuarios(IdUsuario)
	,IdEvento INT FOREIGN KEY REFERENCES Eventos(IdEvento)
);