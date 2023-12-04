use a3engdados;
load data infile 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\dataset-modelos-ver1.csv'
into table modelo
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows
(marca_idmarca,modelo_nome,modelo_fuel,modelo_fuel,modelo_gear,modelo_hp,modelo_year)