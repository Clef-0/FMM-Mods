@ECHO OFF
ECHO Installing Halo Reach Shotgun...

if exist ..\..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
Type ReachShotgun.cmds | TagTool.exe ..\..\..\..\maps\tags.dat
ECHO Installation Complete.
pause
GOTO End

:Label1
ECHO WARNING this mod needs to be in <HaloOnline>/mods/TagMods/reachmods
ECHO Windows may block mods if the game folder is in Program Files.
pause
