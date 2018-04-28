@echo off
title HangemHigh Installer
cls
echo.
echo.
echo  Installing HangemHigh...
echo.
echo.
xcopy /y ".\x_Install\Index\Index_Tags" ".\x_Install"
Type x_Install\Script\x1_patch.cmds | TagTool.exe -..\..\..\..\..\..\..\maps\tags.dat
Type x_Install\Script\x2_deps.cmds | TagTool.exe -..\..\..\..\..\..\..\maps\tags.dat
echo.
echo.
echo  Install Complete!