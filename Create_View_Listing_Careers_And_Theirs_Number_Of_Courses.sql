CREATE OR ALTER VIEW vwCareers AS
    -- SQL COMMAND TO LIST ALL CAREERS AND THE NUMBER OF COURSES IN THEM (USING SUB QUERY [NOT VERY PERFORMATIC])
    SELECT 
        [Id],
        [Title],
        [Url],
        (SELECT COUNT([CareerId]) FROM [CareerItem] WHERE [CareerId] = [Id]) AS [Courses]
    FROM
        [Career]

CREATE OR ALTER VIEW vwCareers AS
    -- SQL COMMAND TO LIST ALL CAREERS AND THEIR NUMBER OF COURSES
    SELECT
        [Career].[Id],
        [Career].[Title],
        [Career].[Url],
        Count([Id]) AS [Courses]
    FROM
        [Career]
        INNER JOIN [CareerItem] ON [Career].[Id] = [CareerItem].[CareerId]
    GROUP BY
        [Career].[Id],
        [Career].[Title],
        [Career].[Url]