-- para ejecutar comandos en todas las bases de datos
use master
DECLARE @COMANDO varchar(max)
-- empiezo filtrando en que base de datos no quiero que se ejecute on no este script (in , not in ) 
set @COMANDO = 'IF ''?'' NOT IN(''master'', ''model'', ''msdb'', ''tempdb'')
BEGIN
PRINT ''?''
USE ?
-- pongo un lote de sentencias si asi quiero, ejemplo
select getdate()
END'
exec sp_msForEachDb @comando
