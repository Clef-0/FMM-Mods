@ECHO OFF
ECHO Installing Jumping Animations ...

color 0B

if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0

Type JumpingAnimations.cmds | TagTool.exe ../../../maps/tags.dat

ECHO Installation Complete ...

pause
CLEAR
GOTO End

:Label1
ECHO WARNING This mod is not in the correct location.
ECHO It should be: Halo/mods/tagMods/JumpingAnimations
pause