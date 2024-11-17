-- SQL COMMAND TO CREATE A VIEW IN ORDER TO AVOID REPEAT THE SAME COMMAND EVERY TIME (IT DOES NOT ACCEPT WHERE)

CREATE OR ALTER VIEW vwContagemCursosPorCategoria AS
    SELECT TOP (100)
        [Categoria].[Id],
        [Categoria].[Nome],
        COUNT([Curso].[CategoriaId]) AS [Cursos]
    FROM
        [Categoria]
        INNER JOIN [Curso] ON [Curso].[CategoriaId] = [Categoria].[Id]
    GROUP BY
        [Categoria].[Id],
        [Categoria].[Nome],
        [Curso].[CategoriaId]
    HAVING
        COUNT([Curso].[CategoriaId]) > 1


-- SQL COMMAND TO USE A VIEW PREVIOUSLY CREATEAD

SELECT * FROM vwContagemCursosPorCategoria

-- AND IT IS POSSIBLE TO DO FILTER ON ITS RESULT
SELECT 
    * 
FROM 
    vwContagemCursosPorCategoria
WHERE 
    [Nome] = 'Backend'
