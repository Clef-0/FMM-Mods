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

Type commands\textures.cmds | TagTool.exe ../../../maps/tags.dat

ECHO English signs installed.

Type commands\tags.cmds | TagTool.exe ../../../maps/tags.dat

ECHO Skybox replaced, snow and fog removed. 
ECHO Turf theme now applied!

pause
GOTO End

:Label1
ECHO WARNING this mod is not in the correct location.
ECHO It should be: Halo/mods/tagMods/BLANK
ECHO Windows blocks mods to install if the game is in Program Files.
pause