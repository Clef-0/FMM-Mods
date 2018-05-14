ECHO Installing Halo 3 Beta Armors...


color 0A

if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0

Type H3BA.cmds | TagTool.exe ../../../maps/tags.dat



HOTeamColorsChanger.exe "..\..\..\eldorado.exe" -red 0.77647 0.1647 0.1647 -blue 0.1647 0.28627 0.77647
pause

ECHO Installation Complete ...

CLEAR
pause
GOTO End

:Label1
ECHO WARNING Mod is not in the correct location.
ECHO Install at: /mods/tagMods/H3_Beta_Armors
ECHO Other install locations will be blocked by Windows.ECHO Contact /u/Vegetal for help