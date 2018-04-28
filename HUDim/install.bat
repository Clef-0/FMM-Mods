@ECHO OFF
ECHO Installing mod ...

color 0A

ECHO Verifying if tags.dat exists...
if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0


Type Tag_Changes.cmds | TagTool.exe ../../../maps/tags.dat
Type Import_Textures.cmds | TagTool_bitm.exe ../../../maps/tags.dat

ECHO HUDimprovement mod installed.

pause
GOTO End

:Label1
ECHO WARNING this mod is not in the correct location.
ECHO It should be in: Halo/mods/tagMods/
ECHO Windows blocks mods to install if the game is in Program Files.
pause