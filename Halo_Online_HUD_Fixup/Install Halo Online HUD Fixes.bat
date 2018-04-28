@echo off
title Halo Online Tag Patcher
echo.
echo  Patch     : Halo Online HUD Fixup
echo.
echo  Version   : V1.0
echo.
echo  Type      : TAG AND TEXTURE REPLACEMENT
echo.
echo  Author    : Alex231
echo.
echo  Info      : Fixed bugs in the Halo Online HUD such as dual weliding CHDTs.
echo.
echo.
echo.
echo.
echo  Press any key to start patching...
echo.
pause>nul
echo.
echo.
Type "Halo Online HUD Fixes\import.cmds" | HaloOnlineTagTool.exe
echo.
echo.
echo.
echo.
echo  Patching complete, Press any key to close...
echo.
pause>nul
