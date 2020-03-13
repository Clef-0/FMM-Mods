@ECHO off
TITLE Halo Online Music Replace V2 by Jalex
color 0A
ECHO Halo Online Music Replacer V2 by Jalex
ECHO.
ECHO Halo 3 and Halo Online copyright Microsoft Corporation.
ECHO This mod was created using assets from Halo Online, and it is not endorsed by or affiliated with Microsoft.
ECHO All provided sound assets and tags are created and/or owned by Bungie, Microsoft, 343 Industries or Saber Interactive.
ECHO.
PAUSE
ECHO.

if exist ..\..\..\maps\tags.dat (
	GOTO rightpath
) else (
	GOTO wrongpath
)

:rightpath

CLS
ECHO Halo Online Music Replacer v2 by Jalex
ECHO.
ECHO Select your menu theme.
ECHO ------------------------------
ECHO 1  - Default
ECHO 2  - Halo Online
ECHO 3  - Halo Online (No Intro)
ECHO 4  - Halo Online (Only Intro)
ECHO 5  - Halo CE
ECHO 6  - Halo 2
ECHO 7  - Halo 2 (MJOLNIR Mix)
ECHO 8  - Halo 3
ECHO 9  - Halo 3: ODST
ECHO 10 - Halo Reach
ECHO 11 - Halo Wars
ECHO 12 - Custom
ECHO ------------------------------
ECHO.
SET /P choice="Make your selection: "

IF "%choice%"=="1" (
CLS
ECHO Going back to the way things were.
ECHO.
@ECHO on
TYPE scripts\Restore.cmds | data\TagTool.exe ..\..\..\maps\tags.dat
@ECHO OFF
ECHO.
ECHO.
ECHO Your Main Menu has been returned back to normal.
ECHO.
PAUSE
GOTO End
)

IF "%choice%"=="2" ( 
CLS
ECHO Installing your sweet Halo Online Vibes
ECHO.
@ECHO on
TYPE scripts\HO.cmds | data\TagTool.exe ..\..\..\maps\tags.dat
@ECHO OFF
ECHO.
ECHO.
ECHO Mod Installed. Your ears are welcome.
ECHO.
PAUSE
GOTO End
)

IF "%choice%"=="3" ( 
CLS
ECHO Installing your sweet Halo Online Vibes
ECHO.
@ECHO on
TYPE scripts\NoIntro.cmds | data\TagTool.exe ..\..\..\maps\tags.dat
@ECHO OFF
ECHO.
ECHO.
ECHO scripts\Mod Installed. Your ears are welcome.
ECHO.
PAUSE
GOTO End
)

IF "%choice%"=="4" ( 
CLS
ECHO Gracing your ears with a heavenly choir.
ECHO.
@ECHO on
TYPE scripts\OnlyIntro.cmds | data\TagTool.exe ..\..\..\maps\tags.dat
@ECHO OFF
ECHO.
ECHO.
ECHO Mod Installed. Your ears are welcome.
ECHO.
PAUSE
GOTO End
)

IF "%choice%"=="5" ( 
CLS
ECHO Returning you to your childhood.
ECHO.
@ECHO on
TYPE scripts\CE.cmds | data\TagTool.exe ..\..\..\maps\tags.dat
@ECHO OFF
ECHO.
ECHO.
ECHO Mod Installed. Your ears are welcome.
ECHO.
PAUSE
GOTO End
)

IF "%choice%"=="6" ( 
CLS
ECHO Cursing Jackal Snipers.
ECHO.
@ECHO on
TYPE scripts\H2.cmds | data\TagTool.exe ..\..\..\maps\tags.dat
@ECHO OFF
ECHO.
ECHO.
ECHO Mod Installed. Your ears are welcome.
ECHO.
PAUSE
GOTO End
)

IF "%choice%"=="7" ( 
CLS
ECHO Rocking out.
ECHO.
@ECHO on
TYPE scripts\MJOLNIR.cmds | data\TagTool.exe ..\..\..\maps\tags.dat
@ECHO OFF
ECHO.
ECHO.
ECHO Mod Installed. Your ears are welcome.
ECHO.
PAUSE
GOTO End
)

IF "%choice%"=="8" ( 
CLS
ECHO Singing along with your xbox live buddies.
ECHO.
@ECHO on
TYPE scripts\H3.cmds | data\TagTool.exe ..\..\..\maps\tags.dat
@ECHO OFF
ECHO.
ECHO.
ECHO Mod Installed. Your ears are welcome.
ECHO.
PAUSE
GOTO End
)

IF "%choice%"=="9" ( 
CLS
ECHO Polishing the saxaphone.
ECHO.
@ECHO on
TYPE scripts\ODST.cmds | data\TagTool.exe ..\..\..\maps\tags.dat
@ECHO OFF
ECHO.
ECHO.
ECHO Mod Installed. Your ears are welcome.
ECHO.
PAUSE
GOTO End
)

IF "%choice%"=="10" (
CLS
ECHO Playing the greats.
ECHO.
@ECHO on
TYPE scripts\Reach.cmds | data\TagTool.exe ..\..\..\maps\tags.dat
@ECHO OFF
ECHO.
ECHO.
ECHO Mod Installed. Your ears are welcome.
ECHO.
PAUSE
GOTO End
)

IF "%choice%"=="11" ( 
CLS
ECHO Conducting the band from the sky.
ECHO.
@ECHO on
TYPE scripts\Wars.cmds | data\TagTool.exe ..\..\..\maps\tags.dat
@ECHO OFF
ECHO.
ECHO.
ECHO Mod Installed. Your ears are welcome.
ECHO.
PAUSE
GOTO End
)

IF "%choice%"=="12" ( 
GOTO Customs
)

IF "%choice%"=="remember" (
CLS
ECHO If you're readin this you either got real lucky or you're lookin at my code. So here's an easter egg.
ECHO Never Forget on it's own cus it's one of the best halo songs.
ECHO Now stop peeking :c
ECHO.
@ECHO on
TYPE scripts\Remember.cmds | data\Tagtool.exe ..\..\..\maps\tags.dat
@ECHO off
ECHO.
ECHO.
ECHO Mod Installed. Remember Reach.
ECHO.
PAUSE
GOTO End
)

IF "%choice%"=="betabaka" (
CLS
ECHO Just for you Satomi.
ECHO Appreciate the effort or I'll kill you.
ECHO.
@ECHO on
TYPE scripts\Beta.cmds | data\Tagtool.exe ..\..\..\maps\tags.dat
@ECHO off
ECHO.
ECHO.
ECHO Mod Installed. Baka.
ECHO.
PAUSE
GOTO End
)

IF NOT "%choice%"=="1" (
	IF NOT "%choice%"=="2" (
		IF NOT "%choice%"=="3" (
			IF NOT "%choice%"=="4" (
				IF NOT "%choice%"=="5" (
					IF NOT "%choice%"=="6" (
						IF NOT "%choice%"=="7" (
							IF NOT "%choice%"=="8" (
								IF NOT "%choice%"=="9" (
									IF NOT "%choice%"=="10" (
										IF NOT "%choice%"=="11" (
											IF NOT "%choice%"=="12" (
												IF NOT "%choice%"=="remember" (
													IF NOT "%choice%"=="betabaka" (
													CLS
													ECHO Please enter something valid. That was not an option I gave you.
													ECHO.
													PAUSE
													GOTO rightpath
													)
												)
											)
										)
									)
								)
							)
						)
					)
				)
			)
		)
	)
)

:Customs
CLS
ECHO The process for customs is a little different. Halo Online requires some specifics for its audio files.
ECHO The custom song folder has some more info along with some guidance screenshots if needed.
ECHO.
ECHO Load your MP3 file into audacity and if it wasn't already, re-export the song at 160kbps.
ECHO Place your converted song into the custom songs folder under the name "custom.mp3"
ECHO.
ECHO Load up the converted song into audacity now and click one of the arrows at the bottom.
ECHO From the drop down menu, select samples "Samples" and press CTRL-A
ECHO.
ECHO.
SET /p samples="Enter the total number of samples here (or type back if you can't be bothered): "

IF "%samples%"=="back" (
GOTO rightpath
)

IF NOT exist "custom songs\custom.mp3" (
ECHO.
ECHO You don't appear to have custom.mp3 in the right place. Make sure it's in the custom songs foler.
ECHO.
PAUSE
GOTO :Customs
)

ECHO.
ECHO Assuming you've done it right (and assuming I've done it right) it should now import into the game.
ECHO EditTag 0x572F > "custom songs\Customs.cmds"
ECHO EditBlock PitchRanges[0] >> "custom songs\Customs.cmds"
ECHO RemoveBlockElements Permutations * >> "custom songs\Customs.cmds"
ECHO SaveTagChanges >> "custom songs\Customs.cmds"
ECHO exitTo tags >> "custom songs\Customs.cmds"
ECHO. >> "custom songs\Customs.cmds"
ECHO EditTag 0x5730 >> "custom songs\Customs.cmds"
ECHO resourcedata import audio.dat "custom songs\custom.mp3" >> "custom songs\Customs.cmds"
ECHO EditBlock PitchRanges[0] >> "custom songs\Customs.cmds"
ECHO RemoveBlockElements Permutations 1 * >> "custom songs\Customs.cmds"
ECHO exit >> "custom songs\Customs.cmds"
ECHO EditBlock ExtraInfo[0].LanguagePermutations[0] >> "custom songs\Customs.cmds"
ECHO RemoveBlockElements RawInfo 1 * >> "custom songs\Customs.cmds"
ECHO exit >> "custom songs\Customs.cmds"
ECHO exit >> "custom songs\Customs.cmds"
ECHO SetField PitchRanges[0].PermutationCount 1 >> "custom songs\Customs.cmds"
ECHO SetField Promotion.TotalSampleSize %samples% >> "custom songs\Customs.cmds"
ECHO SetField PitchRanges[0].Permutations[0].PermutationChunks[0].EncodedSize 78734464 >> "custom songs\Customs.cmds"
ECHO SetField PitchRanges[0].Permutations[0].SampleSize %samples% >> "custom songs\Customs.cmds"
ECHO SetField ExtraInfo[0].LanguagePermutations[0].RawInfo[0].SampleCount %samples% >> "custom songs\Customs.cmds"
ECHO SetField ExtraInfo[0].LanguagePermutations[0].RawInfo[0].ResourceSampleSize %samples% >> "custom songs\Customs.cmds"
ECHO SaveTagChanges >> "custom songs\Customs.cmds"
ECHO exitTo tags >> "custom songs\Customs.cmds"
ECHO dumplog HOMusicLog.txt >> "custom songs\Customs.cmds"
ECHO exit  >> "custom songs\Customs.cmds"
ECHO.
PAUSE
@ECHO on
TYPE "custom songs\Customs.cmds" | data\TagTool.exe ..\..\..\maps\tags.dat
@ECHO OFF
ECHO.
ECHO.
ECHO Mod Installed. Fingers crossed.
ECHO.
PAUSE
GOTO End

:wrongpath
ECHO Your mod isn't installed in the right place.
ECHO Please ensure you're running this file from [El Dew Root]\mods\tagmods
ECHO.
PAUSE

:End