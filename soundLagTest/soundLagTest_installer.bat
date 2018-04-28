@ECHO OFF
ECHO Installing ...

color 0A

if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
Type commands\soundLagTest.cmds | TagTool.exe ../../../maps/tags.dat
ECHO Installation Complete.
pause
GOTO End

:Label1
ECHO WARNING this mod needs to be in <HaloOnline>/mods/TagMods/soundLagTest/
ECHO Windows may block mods if the game folder is in Program Files.
ECHO https://www.reddit.com/user/dany5639/
pause