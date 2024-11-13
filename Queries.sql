-- Querying all columns of a table
SELECT
    *
FROM
    [Curso]

-- Querying Courses by its related category id using equal to operator
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE
    [CategoriaId] = 1

-- Querying Courses by its related category id using greater than operator
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE
    [CategoriaId] > 1

-- Querying Courses by its related category id using less than operator
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE
    [CategoriaId] < 1

-- Querying Courses by its related category id using greater than or qual to operator
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE
    [CategoriaId] >= 1

-- Querying Courses by its related category id using less than or equal to operator
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE
    [CategoriaId] <= 1

-- Querying Courses by its related category id using different of operator
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE
    [CategoriaId] != 1

-- Querying Courses by its related category id using null operator
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE
    [CategoriaId] IS NULL

-- Querying Courses by its related category id using not null operator
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE
    [CategoriaId] IS NOT NULL

-- Querying Courses using AND operator
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE
    [Id] = 1 AND
    [CategoriaId] = 1

-- Querying Courses using OR operator
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE
    [Id] = 1 OR
    [CategoriaId] = 1

-- Querying Courses ordering the result by their names
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
ORDER BY
    [Nome]

-- Querying Courses ordering the result by their names and then by their id
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
ORDER BY
    [Nome], [Id]

-- Querying Courses ordering the result by their names ascending
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
ORDER BY
    [Nome] ASC

-- Querying Courses ordering the result by their names descending
SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
ORDER BY
    [Nome] DESC

-- Getting smallest id
SELECT
    MIN([Id])
FROM 
    [Curso]

-- Getting largest id
SELECT
    MAX([Id])
FROM
    [Curso]

-- Counting the amount of registres by its id
SELECT
    COUNT([Id])
FROM
    [Curso]

-- Getting the avarage result of the id values
SELECT
    AVG([Id])
FROM
    [Curso]

-- Gwtting the sum of the values of the column id
SELECT
    SUM([Id])
FROM
    [Curso]

-- Getting data starting with Fundamentos
SELECT
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE [Nome] LIKE 'Fundamentos%'

-- Getting data ending with C#
SELECT
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE [Nome] LIKE '%C#'

-- Getting data that contains the letter C
SELECT
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE [Nome] LIKE '%c%'

-- Getting data in a specific list of values (ex: ids 1 and 2 and 3)
SELECT
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE [Id] IN (1, 2, 3)

-- Getting data between two values
SELECT
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE [Id] BETWEEN 2 AND 3

-- Getting data applying aliases
SELECT TOP 100
    [Id] AS [Codigo],
    [Nome]
FROM
    [Curso]

-- Getting data joining two tables related to each other and retrieveing only data present in the two tables (intersection)
SELECT TOP 100
    *
FROM
    [Curso]
    INNER JOIN [Categoria]
        ON [Curso].[CategoriaId] = [Categoria].[Id]

SELECT TOP 100
    [Curso].[Id],
    [Curso].[Nome],
    [Categoria].[Id] AS [Categoria],
    [Categoria].[Nome]
FROM
    [Curso]
    INNER JOIN [Categoria]
        ON [Curso].[CategoriaId] = [Categoria].[Id]

-- Getting data prioritizing first table mentioned in the statement even if it generates null values on result
SELECT TOP 100
    [Curso].[Id],
    [Curso].[Nome],
    [Categoria].[Id] AS [Categoria],
    [Categoria].[Nome]
FROM
    [Curso]
    LEFT JOIN [Categoria]
        ON [Curso].[CategoriaId] = [Categoria].[Id]


-- Getting data prioritizing second table mentioned in the statement even if it generates null values on result

SELECT TOP 100
    [Curso].[Id],
    [Curso].[Nome],
    [Categoria].[Id] AS [Categoria],
    [Categoria].[Nome]
FROM
    [Curso]
    RIGHT JOIN [Categoria]
        ON [Curso].[CategoriaId] = [Categoria].[Id]

-- Getting all data from the two tables even if they have not related data in the other table involved in the statement
SELECT TOP 100
    [Curso].[Id],
    [Curso].[Nome],
    [Categoria].[Id] AS [Categoria],
    [Categoria].[Nome]
FROM
    [Curso]
    FULL OUTER JOIN [Categoria]
        ON [Curso].[CategoriaId] = [Categoria].[Id]

-- Unifying two table (related or not) in a query (their column must have similar type of data)

SELECT TOP 100
    [Id], [Nome]
FROM
    [Curso]

UNION

SELECT TOP 100
    [Id], [Nome]
FROM
    [Categoria]

-- Unifying two table (related or not) in a query avoing duplicated data

SELECT TOP 100
    [Id], [Nome]
FROM
    [Curso]

UNION ALL

SELECT TOP 100
    [Id], [Nome]
FROM
    [Categoria]

SELECT TOP 100
    *
FROM
    [Categoria]
    INNER JOIN [Curso] ON [Curso].[CategoriaId] = [Categoria].[Id]

-- Querying by grouping data to get the number of courses in each category

SELECT TOP 100
    [Categoria].[Nome],
    COUNT([Curso].[CategoriaId]) AS [Cursos]
FROM
    [Categoria]
    INNER JOIN [Curso] ON [Curso].[CategoriaId] = [Categoria].[Id]
GROUP BY
    [Categoria].[Nome],
    [Curso].[CategoriaId]

-- Querying by grouping data to get the number of courses in each category where the number of categories must be greater tha 1

SELECT TOP 100
    [Categoria].[Nome],
    COUNT([Curso].[CategoriaId]) AS [Cursos]
FROM
    [Categoria]
    INNER JOIN [Curso] ON [Curso].[CategoriaId] = [Categoria].[Id]
GROUP BY
    [Categoria].[Nome],
    [Curso].[CategoriaId]
HAVING
    COUNT([Curso].[CategoriaId]) > 1