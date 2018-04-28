@echo off
title SandboxShaders
color 25
echo.
echo.
echo 				*********************
echo 				***  FlatWeapFix  ***
echo 				~~~~~~~~~~~~~~~~~~~~~
echo 				***  Version 0.9  ***
echo 				~~~~~~~~~~~~~~~~~~~~~
echo 				*** Press Any Key ***
echo 				*********************
pause > nul

ECHO Fixing the weapons to you can actually pick them up when they lay flat...


color 05

if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
Type flat.cmds | TagTool.exe ../../../maps/tags.dat

ECHO Installation Complete ...

CLEAR
pause
GOTO End

:Label1
ECHO WARNING this mod is not in the correct location.
ECHO It should be: Halo/mods/tagMods/FlatWeapFix
ECHO Windows blocks mods to install if the game is in Program Files.
pause