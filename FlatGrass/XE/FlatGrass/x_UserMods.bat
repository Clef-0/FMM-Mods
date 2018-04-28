@echo off
title FlatGrass Installer
cls
echo.
echo.
echo  Installing UserMods...
echo.
echo.
xcopy /y ".\x_UserMods\Index\Index_Tags" ".\x_UserMods"
cd x_UserMods\Index\
BinCMP -patch Index_Patch\BUNGIE_SCEN.txt ..\BUNGIE_SCEN.tag
BinCMP -patch Index_Patch\ETERNAL_SCEN.txt ..\ETERNAL_SCEN.tag
cd ..\..\
Type x_UserMods\Script\x1_patch.cmds | TagTool.exe -..\..\..\..\..\..\..\maps\tags.dat
Type x_UserMods\Script\x2_armory.cmds | TagTool.exe -..\..\..\..\..\..\..\maps\tags.dat
Type x_UserMods\Script\x3_deps.cmds | TagTool.exe -..\..\..\..\..\..\..\maps\tags.dat
echo.
echo.
echo  Install Complete!
echo.
echo.
cd ..\..\Dank1496\HangemHigh\
x_Install.bat