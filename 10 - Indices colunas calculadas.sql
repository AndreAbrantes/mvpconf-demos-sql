SELECT Id, Nome FROM ClienteMvp WHERE MONTH(DataNascimento) = 12

ALTER TABLE ClienteMvp
	ADD MesNascimento AS MONTH(DataNascimento)
GO

CREATE INDEX IDX_MesNascimento ON ClienteMvp(MesNascimento) INCLUDE(Id, Nome)

SELECT Id, Nome FROM ClienteMvp WHERE MesNascimento = 12