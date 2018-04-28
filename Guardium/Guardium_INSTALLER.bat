Type commands\genLastTag.cmds | TagTool.exe ../../../maps/tags.dat
timeout 1

Type commands\reserveTags.cmds | TagTool.exe ../../../maps/tags.dat
timeout 1

start commands\TTCC.exe commands\Guardium.cmdX
timeout 1

TASKKILL /PID TTCC.exe
timeout 1

Type commands\Guardium.cmds | TagTool.exe ../../../maps/tags.dat
pause