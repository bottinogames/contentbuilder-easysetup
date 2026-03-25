@ECHO OFF
ECHO ┳┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┓
ECHO ┃ SKYSHARD QUICKBUILD ┇
ECHO ┣┉┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┛
ECHO ┃
ECHO ┃

if exist steamuser.txt GOTO build

ECHO ┣ No steamuser.txt found
ECHO ┃

SET /P STEAMUSER=┣ Enter steam username:
ECHO %STEAMUSER% > steamuser.txt
ECHO ┃



:build

SET /p STEAMUSER=<steamuser.txt
ECHO ┣ Building with steam user "%STEAMUSER%"
ECHO ┛
ECHO ...


builder\steamcmd.exe +login %STEAMUSER% +run_app_build ..\scripts\quickbuild.vdf +quit

pause