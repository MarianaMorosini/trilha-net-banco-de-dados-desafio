--1 Buscar o nome e ano dos filmes
SELECT 
	Nome,
	Ano
FROM 
	Filmes;


--2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT 
	Nome,
	Ano
FROM 
	Filmes
ORDER BY 
	Ano;


--3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT 
	Nome,
	Ano,
	Duracao
FROM 
	Filmes
WHERE 
	Nome = 'de volta para o futuro';


--4 Buscar os filmes lan�ados em 1997
SELECT 
	*
FROM 
	Filmes
WHERE 
	Ano = 1997;


--5 Buscar os filmes lan�ados AP�S o ano 2000
SELECT 
	*
FROM 
	Filmes
WHERE 
	Ano > 2000;


--6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT 
	*
FROM 
	Filmes
WHERE 
	Duracao > 100 
AND 
	Duracao < 150
ORDER BY 
	Duracao;


--7 Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente
SELECT 
	Ano,
	Count(*) AS Quantidade
FROM 
	Filmes
GROUP BY 
	Ano
ORDER BY 
	Quantidade DESC;


--8 Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	PrimeiroNome,
	UltimoNome
From
	Atores
WHERE
	Genero = 'M';


--9 Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	PrimeiroNome,
	UltimoNome
From
	Atores
WHERE
	Genero = 'F'
ORDER BY 
	PrimeiroNome;


--10 Buscar o nome do filme e o g�nero
SELECT
	f.Nome,
	g.Genero
FROM 
	Filmes f
INNER JOIN 
	FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN 
	Generos g ON g.Id = fg.IdGenero;


--11 Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT
	f.Nome,
	g.Genero
FROM 
	Filmes f
INNER JOIN 
	FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN 
	Generos g ON g.Id = fg.IdGenero
WHERE
	g.Genero = 'mist�rio';


--12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
	f.Nome AS NomeFilme,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM 
	Filmes f
INNER JOIN 
	ElencoFilme ef ON ef.IdFilme = f.Id
INNER JOIN 
	Atores a ON a.Id = ef.IdAtor;