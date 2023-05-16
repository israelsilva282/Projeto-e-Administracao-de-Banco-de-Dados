CREATE OR REPLACE FUNCTION calcular_idade(data_nasc DATE)
  RETURNS INTEGER AS
$$
BEGIN
  RETURN EXTRACT(YEAR FROM age(CURRENT_DATE, data_nasc));
END;
$$
LANGUAGE plpgsql;
