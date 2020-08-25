::Opens all C++ and text files of current directory in Notepad++
@echo off
if "%~1" == "" ("C:\Program Files\Notepad++\notepad++.exe" *.txt *.cpp *.h *.hpp *.bat *.md *.rtf)
else if exist "%~1.*" ("C:\Program Files\Notepad++\notepad++.exe" "%~1.*")
else (copy /y NUL "%~1.txt" >NUL && "C:\Program Files\Notepad++\notepad++.exe" "%~1.txt")