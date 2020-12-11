CREATE INDEX IDX_DataNascimento ON ClienteMvp(DataNascimento) INCLUDE (Nome)

SELECT * FROM ClienteMvp WHERE YEAR(DataNascimento) = 2020


SELECT * FROM ClienteMvp WHERE DataNascimento BETWEEN '20200101' AND '20201231'