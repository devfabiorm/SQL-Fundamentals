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