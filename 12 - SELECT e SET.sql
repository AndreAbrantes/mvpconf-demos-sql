DECLARE @i Int, @Test1 int, @Start datetime
DECLARE @Item1 Char(6),
        @Item2 Char(6),
        @Item3 Char(6),
        @Item4 Char(6),
        @Item5 Char(6),
        @Item6 Char(6),
        @Item7 Char(6),
        @Item8 Char(6),
        @Item9 Char(6),
        @Item10 Char(6);

SET @Test1 = 0
SET @i = 0
SET @Start = GetDate()
WHILE @i < 100000
BEGIN
  SET @Item1 = ''
  SET @Item2 = ''
  SET @Item3 = ''
  SET @Item4 = ''
  SET @Item5 = ''
  SET @Item6 = ''
  SET @Item7 = ''
  SET @Item8 = ''
  SET @Item9 = ''
  SET @Item10 = ''
 	SET @i = @i + 1                   
END                                
SET @Test1 = DATEDIFF(ms, @Start, GetDate())
SELECT @test1

GO

DECLARE @i Int, @Test1 int, @Start datetime
DECLARE @Item1 Char(6),
        @Item2 Char(6),
        @Item3 Char(6),
        @Item4 Char(6),
        @Item5 Char(6),
        @Item6 Char(6),
        @Item7 Char(6),
        @Item8 Char(6),
        @Item9 Char(6),
        @Item10 Char(6);

SET @Test1 = 0
SET @i = 0
SET @Start = GETDATE()
WHILE @i < 100000
BEGIN
SELECT @Item1 = '',
       @Item2 = '',
       @Item3 = '',
       @Item4 = '',
       @Item5 = '',
       @Item6 = '',
       @Item7 = '',
       @Item8 = '',
       @Item9 = '',
       @Item10 = '',
       @i = @i + 1;
END                                
SET @Test1 = DATEDIFF(ms, @Start, GETDATE())
SELECT @test1