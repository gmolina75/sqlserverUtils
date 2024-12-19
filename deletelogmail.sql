--eliminar el log de mail de sql server

EXECUTE msdb.dbo.sysmail_delete_log_sp ;  
GO  
