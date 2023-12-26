@ECHO OFF
ECHO Installing Shotgun Fix...
color 0A

if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
Type ShotgunFix.cmds | Tagtool\TagTool.exe ..\..\..\maps\tags.dat
ECHO Installation Complete.
pause
GOTO End

:Label1
ECHO WARNING this mod needs to be in <HaloOnline>/mods/tagmods/shotgun_fix/
ECHO Windows may block mods if the game folder is in Program Files.
pause
