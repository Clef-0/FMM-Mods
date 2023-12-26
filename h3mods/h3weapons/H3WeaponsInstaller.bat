@ECHO OFF
ECHO Installing Halo3Weapons...
ECHO                         .-:/++oossssssssoo+//:.`                               
ECHO                       `yMMMMMMMMMMMMMMMMMMMMMMMMNmhyo/-`                       
ECHO                 .:oydNMMMMMMNNmddddddddmmNMMMMMMMMMMMMMNdy+-                   
ECHO             .+ymMMMNdys+/-.`              `.-/+shmNMMMMMMMMMNy/`               
ECHO          `+dNMNho:.       ..+dmmmmmmmmmmmmmo/++.  `:ohNMMMMMMMMNy-             
ECHO        `sNMNh/`          `NMNNNNNNNNNNNNMMMNyso.      `/yNMMMMMMMMh-           
ECHO       /NMMd.             `ho         -hMMNo`             .yMMMMMMMMN+          
ECHO  `yyyhNMMh                        `+hMMMNhso+:`            +MMMMMMMMN/         
ECHO   .dMMMMM/                         ++++ooshNMMNdo`          mMMMMMMMMNs/////-  
ECHO     ``````           `                     `+NMMMm.        .NMMMMMMMMNyo++++:  
ECHO                    .dNh+-                   -NMMMM/       -mMMMMMMMMN/         
ECHO                     `odNMNhs+:-.`     `.:+sdNMMMNs      -yNMMMMMMMMN+          
ECHO                        `/odMMMMMMNNNNNNMMMMMMmh+.   `:smMMMMMMMMMMh-           
ECHO                    -/-`    :/osyhddddhhyso/:`  .:+sdNMMMMMMMMMMNy-             
ECHO                  .yMMMMNdhyso++///::///++osyhmNMMMMMMMMMMMMMmy/`               
ECHO                  :oydNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNdy+-                   
ECHO                       `.:/+syyhddNMMMMMMMMMMMMMMNmhyo/-`                       
ECHO                                  /sssssooo+/:-.`
ECHO
ECHO   H3 Weapons By Satomi
color 0A

if exist ..\..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
Type H3Weapons.cmds | Tagtool\TagTool.exe ..\..\..\..\maps\tags.dat
ECHO Installation Complete.
pause
GOTO End

:Label1
ECHO WARNING this mod needs to be in <HaloOnline>/mods/TagMods/h3mods/
ECHO Windows may block mods if the game folder is in Program Files.
pause
