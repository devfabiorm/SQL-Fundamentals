-- SQL COMMAND TO INSERT VALUES IN A TABLE EXPLICITING WHICH FIELDS INSERT VALUES
INSERT INTO [Categoria]([Nome]) VALUES('Backend')
INSERT INTO [Categoria]([Nome]) VALUES('Frontend')
INSERT INTO [Categoria]([Nome]) VALUES('Mobile')

INSERT INTO [Curso] ([Nome], [CategoriaId]) VALUES('Fundamemntos de C#', 1)
INSERT INTO [Curso] ([Nome], [CategoriaId]) VALUES('Fundamemntos OOP', 1)
INSERT INTO [Curso] ([Nome], [CategoriaId]) VALUES('Angular', 2)
INSERT INTO [Curso] ([Nome], [CategoriaId]) VALUES('Flutter', 3)

-- SQL COMMAND TO INSERT VALUES IN A TABLE WITHOUT EXPLICIT THE FIELDS, SO SQL WILL FOLLOW COLUMNS ORDER
INSERT INTO [Curso] VALUES('Flutter e SQLite', 3)