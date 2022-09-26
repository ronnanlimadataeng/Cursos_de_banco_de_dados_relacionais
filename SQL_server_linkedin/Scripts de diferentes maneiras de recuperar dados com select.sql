-- Recuperar todos os campos com todos os resultados 
	SELECT 
		id_quarto,
		numero_quarto,
		tipo_cama,
		tarifa
	FROM 
		dbo.Quartos

-- Recuperar a soma dos quartos renomeando por ocupantes, tarifa e agrupar por faixa de tarifas
	SELECT 
		count(id_quarto) as Ocupantes,
		Tarifa
	FROM 
		dbo.Quartos
	GROUP BY
		tarifa

-- Recuperar todos os camas do tipo Luxo
	SELECT 
		*
	FROM 
		dbo.Quartos
	WHERE
		tipo_cama = 'LUXO'

-- Recuperar todos os camas do tipo standard
	SELECT 
		*
	FROM 
		dbo.Quartos
	WHERE
		tipo_cama = 'standard'

-- Recuperar todos os quartos que são maior que 90
	SELECT 
		*
	FROM 
		dbo.Quartos
	WHERE
		tarifa < 100


-- simbolos de comparação
> maior
< menor
>= maior ou igual
< menor ou igual
= igual
!= diferente 

-- Recuperador todos os registros da tabela hospedes e ordenar por nome
SELECT *
FROM
dbo.Hospedes
ORDER BY
NOME -- por padrão a ordem caso n seja setada vira como ASC(CRESCENTE do menor para o maior);

SELECT *
FROM
dbo.Hospedes
ORDER BY
NOME DESC --  DES(DESCENDENTE do maior para o menor);