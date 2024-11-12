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