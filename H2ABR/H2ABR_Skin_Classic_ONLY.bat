ECHO off
color 0A

if exist H2ABRinstalled.txt (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
Type commands\H2ABR_DEV_classicSkins.cmds | TagTool.exe ../../../maps/tags.dat
ECHO Skins Installed.
pause
GOTO END

:Label1
ECHO WARNING you need to install the base mod first. 
ECHO Use H2ABR_INSTALLER.bat to install the base mod.

pause