INSERT INTO [Categoria]([Nome])
    VALUES('Backend')

-- SQL COMMAND TO UPDATE A REGISTER IN TABLE BY ITS ID (BEING TRANSACTION WAS USED JUST TO AVOID CHANGING WRONG NUMBER OF REGISTERS)
BEGIN TRANSACTION
    UPDATE 
        [Categoria]
    SET 
        [Nome] = 'Azure'
    WHERE 
        [Id] = 4
--ROLLBACK
COMMIT