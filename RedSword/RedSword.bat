ECHO changing enery sword shaders to red...


color 0A

if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0

Type RedSword.cmds | TagTool.exe ../../../maps/tags.dat

ECHO Installation Complete ...

CLEAR
pause
GOTO End

:Label1
ECHO WARNING this mod is not in the correct location.
ECHO It should be: Halo/mods/tagMods/RedSword
ECHO Windows blocks mods to install if the game is in Program Files.
ECHO If it doesn't work, just send the log to reddit/u/soular00t
pause
