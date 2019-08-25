@ECHO off
color 0A
ECHO Halo Online Headshot Pop by Jalex
ECHO.
ECHO Halo 3 and Halo Online copyright Microsoft Corporation.
ECHO This mod was created using assets from Halo Online, and it is not endorsed by or affiliated with Microsoft.
ECHO All provided tags, textures and sounds are created and/or owned by Bungie, Microsoft, 343 Industries or Saber Interactive.
ECHO.
PAUSE
ECHO.

if exist ..\..\..\maps\tags.dat (
	GOTO rightpath
) else (
	GOTO wrongpath
)

:rightpath

ECHO Installing that satisfaction
ECHO.
@ECHO on
TYPE HeadshotPop.cmds | data\TagTool.exe ..\..\..\maps\tags.dat
@ECHO OFF
ECHO.
ECHO.
ECHO Mod Installed. Your ears are welcome.
ECHO.
PAUSE
GOTO End

:wrongpath
ECHO Your mod isn't installed in the right place.
ECHO Please ensure you're running this file from [El Dew Root]\mods\tagmods
PAUSE