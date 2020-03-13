ECHO Installing Halo 3 Beta Armors...


color 0A

if exist ..\..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0

Type Remove_Secondaries.cmds | ..\TagTool.exe ../../../../maps/tags.dat

ECHO Installation Complete ...

pause
GOTO End

:Label1
ECHO WARNING Mod is not in the correct location.
ECHO Install at: /mods/tagMods/H3_Beta_Armors
ECHO Other install locations will be blocked by Windows.ECHO Contact /u/Vegetal for help