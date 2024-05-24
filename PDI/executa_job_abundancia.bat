@echo off

TITLE ExecutaJob
SET currentdir=%~dp0
SET kitchen=C:\Program Files\pentaho\data-integration\Kitchen.bat
SET logfile="%currentdir%log.txt"

echo. >> %logfile%
echo. >> %logfile%
"%kitchen%" /file:"C:\TESTE ENTREVISTA\PDI\Job_dado_monitoramento.kjb" /level:Basic >> %logfile%