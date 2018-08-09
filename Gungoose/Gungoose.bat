ECHO Sending your Mongeese to The Spartan Research Lab to get weapons installed...


color 0A

if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0

Type Gungoose.cmds | TagTool.exe ../../../maps/tags.dat

ECHO The Spartan Research Lab shipment with your new Gungeese have returned ...


pause
GOTO End

:Label1
ECHO WARNING this mod is not in the correct location.
ECHO It should be: Halo/mods/tagmods/Gungoose
ECHO Windows blocks mods to install if the game is in Program Files.
pause
