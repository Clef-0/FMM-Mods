@ECHO OFF
ECHO Installing Halo 2 Anniversary Battle Rifle (Halo 3 Skin)...
color 0A

if exist ..\..\..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
Type H2aBR_h3.cmds | ..\Tagtool\TagTool.exe ..\..\..\..\..\maps\tags.dat
ECHO Installation Complete.
pause
GOTO End

:Label1
ECHO WARNING this mod needs to be in <HaloOnline>/mods/TagMods/h2amods/h3_skin/
ECHO Windows may block mods if the game folder is in Program Files.
pause
