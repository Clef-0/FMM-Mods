mkdir tags
set /p tagsPath=Enter modified tag.dat path: 
FOR %%f IN (..\tags\*) DO (echo extract %%~nf tags\%%~nf.tag full >> "extractScript.cmds")
Type "extractScript.cmds" | "TagTool_Old.exe" "%tagsPath%"
del "extractScript.cmds"
FOR %%f IN (..\tags\*) DO (del %%f)
FOR %%f IN (tags\*.tag) DO (move %%f ..\tags\)
pause