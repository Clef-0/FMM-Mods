@ECHO OFF
color 0A
if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
ECHO Correct folder location. Installing...
Type commands\helmet_effects.cmds | TagTool.exe ../../../maps/tags.dat

CLS
@ECHO INSTALLATION COMPLETE.
@ECHO OFF
pause
GOTO End

:Label1
CLS
@ECHO WARNING mod is not in the correct location.
@ECHO It should be: Halo/mods/tagMods/helmet_effects/
@ECHO You may also try to move the whole game folder elsewhere.
@ECHO OFF
pause
GOTO End