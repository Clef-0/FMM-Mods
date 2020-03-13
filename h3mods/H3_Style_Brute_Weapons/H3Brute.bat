ECHO Installing H3 Style Brute Weapons...


color 0A

if exist ..\..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0

Type H3Brute.cmds | TagTool.exe ../../../../maps/tags.dat

ECHO Installation Complete ...

CLEAR
pause
GOTO End

:Label1
ECHO WARNING Mod is not in the correct location.
ECHO Install at: /mods/tagMods/h3mods/H3_Style_Brute_Weapons
ECHO Other install locations will be blocked by Windows.ECHO Contact /u/Vegetal for help