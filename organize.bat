rem ORGANIZE BATCH FILE BY CARLOS ZERMENO
@echo off
rem For each file in folder
for %%a in (".\*") do (
rem check the file extension
if "%%~xa" NEQ "" if "%%~dpxa" NEQ "%~dpx0" (
rem check if extension folder exists, if not it is created
if not exist "%%~xa" mkdir "%%~xa"
rem Move the file to directory
move "%%a" "%%~dpa%%~xa\"
))