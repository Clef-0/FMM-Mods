@echo off
title FlatGrass Installer
cls
echo.
echo.
echo  Installing Forge...
echo.
echo.
xcopy /y ".\x_Forge\Index\Index_Tags" ".\x_Forge"
cd x_Forge\Index\
BinCMP -patch Index_Patch\bridge_2x1.bloc.txt ..\bridge_2x1.bloc
BinCMP -patch Index_Patch\bridge_2x1.hlmt.txt ..\bridge_2x1.hlmt
BinCMP -patch Index_Patch\bridge_2x2.bloc.txt ..\bridge_2x2.bloc
BinCMP -patch Index_Patch\bridge_2x2.hlmt.txt ..\bridge_2x2.hlmt
BinCMP -patch Index_Patch\bridge_2x3.bloc.txt ..\bridge_2x3.bloc
BinCMP -patch Index_Patch\bridge_2x3.hlmt.txt ..\bridge_2x3.hlmt
BinCMP -patch Index_Patch\bridge_2x5.bloc.txt ..\bridge_2x5.bloc
BinCMP -patch Index_Patch\bridge_2x5.hlmt.txt ..\bridge_2x5.hlmt
BinCMP -patch Index_Patch\window_2x1.bloc.txt ..\window_2x1.bloc
BinCMP -patch Index_Patch\window_2x1.hlmt.txt ..\window_2x1.hlmt
BinCMP -patch Index_Patch\window_2x2.bloc.txt ..\window_2x2.bloc
BinCMP -patch Index_Patch\window_2x2.hlmt.txt ..\window_2x2.hlmt
BinCMP -patch Index_Patch\block_2x2.bloc.txt ..\block_2x2.bloc
BinCMP -patch Index_Patch\block_2x2.hlmt.txt ..\block_2x2.hlmt
BinCMP -patch Index_Patch\block_2x2.mode.txt ..\block_2x2.mode
BinCMP -patch Index_Patch\block_2x1.bloc.txt ..\block_2x1.bloc
BinCMP -patch Index_Patch\block_2x1.hlmt.txt ..\block_2x1.hlmt
BinCMP -patch Index_Patch\block_2x1.mode.txt ..\block_2x1.mode
BinCMP -patch Index_Patch\block_3x3.bloc.txt ..\block_3x3.bloc
BinCMP -patch Index_Patch\block_3x3.hlmt.txt ..\block_3x3.hlmt
BinCMP -patch Index_Patch\block_3x3.mode.txt ..\block_3x3.mode
BinCMP -patch Index_Patch\block_3x1.bloc.txt ..\block_3x1.bloc
BinCMP -patch Index_Patch\block_3x1.hlmt.txt ..\block_3x1.hlmt
BinCMP -patch Index_Patch\block_3x1.mode.txt ..\block_3x1.mode
BinCMP -patch Index_Patch\block_4x4.bloc.txt ..\block_4x4.bloc
BinCMP -patch Index_Patch\block_4x4.hlmt.txt ..\block_4x4.hlmt
BinCMP -patch Index_Patch\block_4x4.mode.txt ..\block_4x4.mode
BinCMP -patch Index_Patch\block_5x5.bloc.txt ..\block_5x5.bloc
BinCMP -patch Index_Patch\block_5x5.hlmt.txt ..\block_5x5.hlmt
BinCMP -patch Index_Patch\block_5x5.mode.txt ..\block_5x5.mode
BinCMP -patch Index_Patch\block_5x1.bloc.txt ..\block_5x1.bloc
BinCMP -patch Index_Patch\block_5x1.hlmt.txt ..\block_5x1.hlmt
BinCMP -patch Index_Patch\block_5x1.mode.txt ..\block_5x1.mode
BinCMP -patch Index_Patch\block_10x5.bloc.txt ..\block_10x5.bloc
BinCMP -patch Index_Patch\block_10x5.hlmt.txt ..\block_10x5.hlmt
BinCMP -patch Index_Patch\block_10x5.mode.txt ..\block_10x5.mode
BinCMP -patch Index_Patch\killball_s_r.bloc.txt ..\killball_s_r.bloc
BinCMP -patch Index_Patch\killball_s_r.hlmt.txt ..\killball_s_r.hlmt
BinCMP -patch Index_Patch\killball_l_r.bloc.txt ..\killball_l_r.bloc
BinCMP -patch Index_Patch\killball_l_r.hlmt.txt ..\killball_l_r.hlmt
BinCMP -patch Index_Patch\killball_s_p.bloc.txt ..\killball_s_p.bloc
BinCMP -patch Index_Patch\killball_s_p.hlmt.txt ..\killball_s_p.hlmt
BinCMP -patch Index_Patch\killball_l_p.bloc.txt ..\killball_l_p.bloc
BinCMP -patch Index_Patch\killball_l_p.hlmt.txt ..\killball_l_p.hlmt
BinCMP -patch Index_Patch\killball_small.mode.txt ..\killball_small.mode
BinCMP -patch Index_Patch\killball_large.mode.txt ..\killball_large.mode
BinCMP -patch Index_Patch\killball_small.effe.txt ..\killball_small.effe
BinCMP -patch Index_Patch\killball_large.effe.txt ..\killball_large.effe
BinCMP -patch Index_Patch\light.bloc.txt ..\light.bloc
BinCMP -patch Index_Patch\light.hlmt.txt ..\light.hlmt
BinCMP -patch Index_Patch\light.mode.txt ..\light.mode
BinCMP -patch Index_Patch\redlight.bloc.txt ..\redlight.bloc
BinCMP -patch Index_Patch\bluelight.bloc.txt ..\bluelight.bloc
BinCMP -patch Index_Patch\greenlight.bloc.txt ..\greenlight.bloc
BinCMP -patch Index_Patch\yellowlight.bloc.txt ..\yellowlight.bloc
BinCMP -patch Index_Patch\sniper.weap.txt ..\sniper.weap
BinCMP -patch Index_Patch\sniper.hlmt.txt ..\sniper.hlmt
BinCMP -patch Index_Patch\sniper.mode.txt ..\sniper.mode
BinCMP -patch Index_Patch\sniper_fp.mode.txt ..\sniper_fp.mode
cd ..\..\
Type x_Forge\Script\x1_patch.cmds | TagTool.exe -..\..\..\..\..\..\..\maps\tags.dat
Type x_Forge\Script\x2_export.cmds | TagCMP.exe -..\..\..\..\..\..\..\maps\tags.dat
cd x_Forge\Index\
BinCMP -patch Index_Patch\bridge_2x1.mode.txt ..\bridge_2x1.mode
BinCMP -patch Index_Patch\bridge_2x2.mode.txt ..\bridge_2x2.mode
BinCMP -patch Index_Patch\bridge_2x3.mode.txt ..\bridge_2x3.mode
BinCMP -patch Index_Patch\bridge_2x5.mode.txt ..\bridge_2x5.mode
BinCMP -patch Index_Patch\window_2x1.mode.txt ..\window_2x1.mode
BinCMP -patch Index_Patch\window_2x2.mode.txt ..\window_2x2.mode
cd ..\..\
Type x_Forge\Script\x3_import.cmds | TagCMP.exe -..\..\..\..\..\..\..\maps\tags.dat
Type x_Forge\Script\x4_palette.cmds | TagTool.exe -..\..\..\..\..\..\..\maps\tags.dat
Type x_Forge\Script\x5_deps.cmds | TagTool.exe -..\..\..\..\..\..\..\maps\tags.dat
echo.
echo.
x_UserMods.bat