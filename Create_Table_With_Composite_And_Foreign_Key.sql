USE [Curso]

DROP TABLE [Curso]

-- SQL COMMAND TO CREATE A TABLE WITH A FOREIGN KEY
CREATE TABLE [Curso] (
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [CategoriaId] INT NOT NULL,

    CONSTRAINT [PK_Aluno] PRIMARY KEY([Id]),
    CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([CategoriaId])
        REFERENCES [Categoria]([Id])
)
GO

CREATE TABLE [Categoria] (
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,

    CONSTRAINT [PK_Categoria] PRIMARY KEY([Id])
)
GO

DROP TABLE [ProgressoCurso]

-- SQL COMMAND TO CREATE A TABLE WITH A COMPOSITE PRIMARY KEY
CREATE TABLE [ProgressoCurso] (
   [AlunoId] INT NOT NULL,
   [CursoId] INT NOT NULL,
   [Progresso] INT NOT NULL,
   [UltimaAtualizacao] DATETIME NOT NULL DEFAULT(GETDATE())

   CONSTRAINT [PK_ProgressoCurso] PRIMARY KEY([AlunoId], [CursoId]),
)
GO