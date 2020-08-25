:: Backs up directory to parent directory with name "(directory)Backup"

@echo off
:: Gets name of current directory, no file path
for %%I in (.) do set CurrDirName=%%~nxI
:: /e copies all subdirectories even if empty; /q suppresses display of xcopy messages
if not exist "%cd%\..\%CurrDirName%Backup\" (xcopy "%cd%" "%cd%\..\%CurrDirName%Backup\" /e) else (echo Backup Exists && pause)