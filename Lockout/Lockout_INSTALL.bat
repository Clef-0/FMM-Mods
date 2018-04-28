@ECHO OFF
color 0A
if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
ECHO Correct folder location. Installing...
DEL /F /Q ..\..\..\maps\Lockout_030.map
DEL /F /Q ..\..\..\maps\Lockout_040.map
DEL /F /Q ..\..\..\maps\Lockout_050.map
xcopy /y ".\Lockout_Ver052.map" "..\..\..\maps\"
CLS
Type allocateTags.cmds | TagTool.exe ../../../maps/tags.dat
Type Lockout.cmds | TagTool.exe ../../../maps/tags.dat
CLS
ECHO INSTALLATION COMPLETE.
pause
GOTO End

:Label1
ECHO WARNING mod is not in the correct location.
ECHO It should be: Halo/mods/tagMods/reachMods/reachDMR/
ECHO You may also try to move the whole game folder elsewhere.
pause
GOTO End