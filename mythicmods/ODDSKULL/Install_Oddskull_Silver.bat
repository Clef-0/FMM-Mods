@ECHO OFF
color 0B

ECHO Verifying if tags.dat exists...
if exist ..\..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
Type Oddskull_Silver.28 | TagTool.exe ../../../../maps/tags.dat
ECHO.
color 0F
ECHO                        ""!!!!!!!!!!""::                              
ECHO              ::ee##MMMMMMMMMMMMMMMMMMMMMM##ww""                      
ECHO          ;;##MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM!!                  
ECHO        wwMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMDD                
ECHO      DDMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMBB              
ECHO    nnMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMww            
ECHO    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM::          
ECHO  ffMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMnn          
ECHO  nnMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMDD          
ECHO  zzMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMee          
ECHO    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM::          
ECHO    ffMMMMMMMMDDwwwwMMMMMMMMMMMMMMMMMMMMMMDDeeUUMMMMMMMMee            
ECHO      ""MMMM          BBMMMMMMMMMMMMMMMM;;        UUMM!!              
ECHO          MM            ;;wwMMMMMMBB!!            BB                  
ECHO        ""MMMM""            BBMMMM;;            wwMMff                
ECHO        MMMMMMMMMMMMBBBBMMMMMMMMMMMMMMBBBB##MMMMMMMMMM                
ECHO        wwMMMMMMMMMMMMMMMMMM##MM##MMMMMMMMMMMMMMMMMMDD                
ECHO          MMMMMMMMMMMMMMMMMM::MM;;MMMMMMMMMMMM##MMMM                  
ECHO            ;;    eeMMMMMMMM  ##  DDMMMMMMww    ::                    
ECHO                    DDMMMMMMUUMMwwMMMMMM##                            
ECHO                    !!MMMMMMMMMMMMMMMMMMzz                            
ECHO                    ::MMff##MMwwMMMM""MM""                            
ECHO                      nn!!DDMM  MMMM;;ww                              
ECHO                          ::UU  ww;;                                  
ECHO.
pause
GOTO END

:Label1
ECHO WARNING this mod is not in the correct location.
ECHO It should be: {Game}/mods/tagmods/mythicmods/ODDSKULL
pause
GOTO END
