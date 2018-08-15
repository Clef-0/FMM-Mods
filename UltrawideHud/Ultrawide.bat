@echo off
title Halo: Online Minimal HUD Tag Patcher
echo.
echo  Patch     : Halo: Online Widescreen HUD
echo  Version   : V1.0
echo  Type      : TAG AND TEXTURE REPLACEMENT
echo  Author    : Cvaughn55,Noble
echo  Info      : Makes hud fill screen on ultrawide displays, uses some features foprm Noble's minimal hud.
echo.
echo.
echo.
echo.
echo  Press any key to start patching...
echo.
pause>nul
echo.
echo.
Type "commands\importbitmap.cmds" | TagTool.exe ..\..\..\maps\tags.dat
echo.
echo.
echo.
echo.
echo.
echo.
echo  Patching complete, Press any key to close...
echo.
pause>nul