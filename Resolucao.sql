USE Filmes
GO

-- 1
SELECT Nome, Ano FROM Filmes 

-- 2
SELECT Nome, Ano FROM Filmes ORDER BY ANO ASC

-- 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

-- 7 Inserido coluna total para verificar a soma da duracação dos filmes, uma vez que houve diferença da imagem
SELECT Ano, COUNT(*) AS Quantidade, SUM(Duracao) AS TOTAL FROM Filmes GROUP BY Ano ORDER BY SUM(Duracao) DESC

-- 8
SELECT Id, PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

-- 9
SELECT Id, PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10
SELECT Nome AS Nome, Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.ID = FilmesGenero.IdFilme INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11
SELECT Nome AS Nome, Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.ID = FilmesGenero.IdFilme INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero WHERE Genero = 'Mistério'

-- 12
SELECT Nome As Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
