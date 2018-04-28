@ECHO OFF
ECHO Installing ...

color 0A

if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
Type ShieldDownFix.cmds | TagTool.exe ../../../maps/tags.dat
ECHO Installation Complete.
pause
GOTO End

:Label1
ECHO WARNING this mod needs to be in <HaloOnline>/mods/TagMods/ShieldDownFix/
ECHO Windows may block mods if the game folder is in Program Files.
pause