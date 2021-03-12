-- 1 Uma lista com o nome de todas as gafanhotas -- OK
	SELECT * FROM gafanhotos WHERE sexo = 'F'
    ORDER BY nome;
    
-- 2 Uma lista com os dados de todos aqueles que nasceram entre 1/1/2000 e 31/12/2015 (ANO_MES_DIAS) -- OK
	SELECT * FROM gafanhotos WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31';
    
-- 3 Uma lista de todos o Homens que trabalham como programadores
	SELECT * FROM gafanhotos WHERE profissao = 'programador' AND sexo = 'M'; -- OK

-- 4 Uma lista com os dados de todas a mulheres que nasceram no Brasil e que têm seu nome iniciado com a letra "J" -- OK
	SELECT * FROM gafanhotos WHERE nome LIKE 'J%' AND nacionalidade = 'Brasil';	
    
-- 5  Uma lista com o nome e nacionalidade de todos os Homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100KG -- OK
	SELECT * FROM gafanhotos WHERE nome LIKE '%Silva%' AND nacionalidade != 'Brasil' AND peso < 100;

-- 6 Qual é a maior altura entre gafanhotos Homens que moram no Brasil? -- OK
    SELECT nome, sexo, MAX(altura)  FROM gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';
    
-- 7 Qual é a média de pesos dos garfanhotos cadastrados --OK
	SELECT AVG(peso) FROM gafanhotos;
    
-- 8 Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil e entre 01-01-1990 e 31-12-200? --OK
	SELECT MIN(peso) FROM gafanhotos WHERE nascimento BETWEEN '1990-01-01' AND '2000-12-31' and sexo = 'F' AND nacionalidade != 'Brasil' ; 
	
-- 9 Quantas gafanhotos mulheres têm mais de 1.90m de altura? -- OK    
    SELECT  COUNT(*) FROM gafanhotos WHERE sexo = 'F' AND altura > 1.90;