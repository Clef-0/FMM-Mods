@ECHO OFF
ECHO Installing Halo3Shields...

color 0A

if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
Type Halo3Shields.cmds | TagTool.exe ../../../maps/tags.dat
ECHO Installation Complete.
pause
GOTO End

:Label1
ECHO WARNING this mod needs to be in <HaloOnline>/mods/TagMods/Halo3Shields/
ECHO Windows may block mods if the game folder is in Program Files.
pause