@ECHO OFF
ECHO Installing ...

color 0A

if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0

Type UpdatedBRSounds.cmds | TagTool.exe ../../../maps/tags.dat

ECHO Installation Complete ...

pause
CLEAR
GOTO End

:Label1
ECHO WARNING this mod is not in the correct location.
ECHO It should be: Halo/mods/tagMods/UpdatedBRSounds
ECHO Windows blocks mods to install if the game is in Program Files.
ECHO If it doesn't work, add discord user Kamakazie Pidgeon #1188 and pm the log.
pause