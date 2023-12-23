@ECHO OFF
ECHO Installing Halo 2 Anniversary Battle Rifle (Ms30)...
color 0A

if exist ..\..\..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
Type H2aBR_ms30.cmds | ..\Tagtool\TagTool.exe ..\..\..\..\..\maps\tags.dat
ECHO Installation Complete.
pause
GOTO End

:Label1
ECHO WARNING this mod needs to be in <HaloOnline>/mods/TagMods/h2amods/ms30_skin/
ECHO Windows may block mods if the game folder is in Program Files.
pause
