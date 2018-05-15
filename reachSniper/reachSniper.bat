ECHO Installing Halo Reach Sniper Rifle


color 0A

if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0

Type reachSniper.cmds | TagTool.exe ../../../maps/tags.dat

ECHO Installation Complete ...

CLEAR
pause
GOTO End

:Label1
ECHO WARNING Mod is not in the correct location.
ECHO Install at: /mods/tagMods/reachSniper