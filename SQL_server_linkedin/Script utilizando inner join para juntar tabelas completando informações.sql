SELECT
Hospedes.NOME,
Hospedes.SOBRENOME,
ReservaQuartos.CheckInData,
ReservaQuartos.CheckOutData,
ReservaQuartos.NumeroQuarto,
Quartos.Tipo_Cama,
Quartos.Tarifa
FROM Hospedes
INNER JOIN ReservaQuartos on ReservaQuartos.ID_Hospede = Hospedes.ID_HOSPEDE
INNER JOIN Quartos on Quartos.Numero_Quarto = ReservaQuartos.NumeroQuarto;

/*
INNER JOIN SERÁ A UNIÃO DE UMA TABELA COM A ANTERIOR
NESTE CASO ESTAMOS UNINDO A TABELA ReservaQuartos
COM A TABELA Hospedes(comparando os dois campos ID_HOSPEDE e trazendo o que for igual)

E O MESMO PARA A TABELA Quartos

/*