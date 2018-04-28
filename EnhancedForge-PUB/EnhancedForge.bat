@echo off
title EnhancedForge-Public
color 85
echo.
echo.
echo  Desc      : Improves Forge, Adds alot of objects to each map.
echo  Authors   : Dava96, Soular00t
echo.
echo.
echo 				*********************
echo 				*** EnhancedForge ***
echo 				~~~~~~~~~~~~~~~~~~~~~
echo 				***  Version 1.2  ***
echo 				~~~~~~~~~~~~~~~~~~~~~
echo 				*** Press Any Key ***
echo 				*********************
pause > nul

ECHO Installing EnhancedForge...


color 0A

if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0

START /WAIT commands\TTCC.exe commands\EnhancedForge.cmdX

Type commands\EnhancedForge.cmds | TagTool.exe ../../../maps/tags.dat

ECHO Installation Complete ...

CLEAR
pause
GOTO End

:Label1
ECHO WARNING this mod is not in the correct location.
ECHO It should be: Halo/mods/tagMods/EnhancedForge
ECHO Windows blocks mods to install if the game is in Program Files.
ECHO If it doesn't work, just send the log to reddit/users/dany5639.
pause