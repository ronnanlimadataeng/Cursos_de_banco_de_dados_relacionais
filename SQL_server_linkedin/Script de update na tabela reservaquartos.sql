UPDATE dbo.ReservaQuartos
	SET CheckinData = '2022-05-08' -- Setando a data 08-05-2022 para trocar com a data j� existente
WHERE ID_Reserva = 1; -- **LEMBRAR DE SEMPRE SETAR O WHERE** , SEM O WHERE SER�O SER� ATUALIZADO TODOS OS CAMPOS 


UPDATE dbo.ReservaQuartos
	SET CheckinData = '2022-05-08' -- Setando a data 08-05-2022 para trocar com a data j� existente
WHERE ID_Reserva = 2 AND NumeroQuarto = 202; -- **LEMBRAR DE SEMPRE SETAR O WHERE** , SEM O WHERE SER�O SER� ATUALIZADO TODOS OS CAMPOS 
