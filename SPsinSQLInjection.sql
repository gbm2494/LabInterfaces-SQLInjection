-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE eliminarEstudiante2 @nombre varchar(20)

AS
BEGIN
    DECLARE @sqlcmd NVARCHAR(MAX);
    DECLARE @params NVARCHAR(MAX);
    SET @sqlcmd = N'DELETE FROM Estudiante WHERE Estudiante.nombre = @nombre';
    SET @params = N'@nombre VARCHAR(20)';
    EXECUTE sp_executesql @sqlcmd, @params, @nombre;
END
