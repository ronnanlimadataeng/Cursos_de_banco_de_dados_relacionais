--Fun��o de convers�o - Graus Celsius por Fahrenheit

USE WideWorldImporters;

SELECT 
       vt.VehicleTemperatureID,
	   vt.Temperature AS Celsius,
	   vt.Temperature * 1.8 + 32 AS Fahrenheit
  FROM warehouse.VehicleTemperatures VT;

-- Criar uma fun��o personalizada para converter graus C�lsius em graus Fahrenheit

CREATE FUNCTION Warehouse.ParaFahrenheit (@Celsius decimal(10,2))
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @Fahrenheit decimal(10,2);
	SET @Fahrenheit = (@Celsius * 1.8 + 32);
	RETURN @Fahrenheit
END;

-- Utilizar a fun��o personalizada em um Select
SELECT TOP 100 VehicleTemperatureID,
	Temperature AS Celsius,
	Warehouse.ParaFahrenheit(Temperature) AS Fahrenheit
FROM Warehouse.VehicleTemperatures;
