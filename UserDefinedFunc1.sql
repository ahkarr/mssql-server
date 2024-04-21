USE [s9demo]
GO

CREATE FUNCTION fnEastOrWest(
	@long DECIMAL(9,6)
)
RETURNS CHAR(4) AS
BEGIN
DECLARE @returnvalue CHAR(4);
SET @returnvalue = 'same';
IF (@long > 0.00) SET @returnvalue = 'east';
IF (@long < 0.00) SET @returnvalue = 'west';
RETURN @returnvalue;
END

SELECT
dbo.fnEastOrWest(0) AS argument0,
dbo.fnEastOrWest(-1) AS [argument+1],
dbo.fnEastorWest(1) AS [argument-1];
