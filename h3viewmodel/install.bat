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
Type commands\h3viewmodel.cmdx | TagTool.exe ../../../maps/tags.dat

ECHO Remastered Halo 3 h3viewmodel is now installed.
ECHO #FuckFleur2017

pause
GOTO End

:Label1
ECHO WARNING this mod is not in the correct location.
ECHO It should be: Halo/mods/tagMods/h3viewmodel
ECHO Windows blocks mods to install if the game is in Program Files.
pause
