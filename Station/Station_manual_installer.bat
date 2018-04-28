cd ..

type Station\reserveTags.cmds | Station\FastIndexGen.exe

type Station\scnr_skya.cmds | Station\HaloOnlineTagTool.exe ..\..\maps\tags.dat
type Station\map_object\map_object.cmds | Station\HaloOnlineTagTool.exe ..\..\maps\tags.dat
type Station\map_object\map_sound.cmds | Station\ImportResource.exe ..\..\maps\tags.dat
type Station\skybox\skybox.cmds | Station\HaloOnlineTagTool.exe ..\..\maps\tags.dat
type Station\cmt_br\cmt_br.cmds | Station\HaloOnlineTagTool.exe ..\..\maps\tags.dat
type Station\cmt_br\cmt_br_model.cmds | Station\TagTool.exe ..\..\maps\tags.dat
type Station\scnr_deps.cmds | Station\HaloOnlineTagTool.exe ..\..\maps\tags.dat

copy Station\station.map ..\..\maps
pause