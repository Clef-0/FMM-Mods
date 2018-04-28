@echo off
ECHO Installing  Defog...


color 05

if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0

Type commands\Defog.cmds | TagTool.exe ../../../maps/tags.dat

ECHO Installation Complete ...

cls
pause
GOTO End

:Label1
ECHO WARNING this mod is not in the correct location.
ECHO It should be: Halo/mods/tagMods/Defog
ECHO Windows blocks mods to install if the game is in Program Files.
pause