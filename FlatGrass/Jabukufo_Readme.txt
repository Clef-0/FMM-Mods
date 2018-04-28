	I (Jabukufo), have made changes to the directory structure
of Xe_CREATURE's Flatgrass installer. So that everything
related to the mod is stored in "/mods/tagmods/FlatGrass FMM/"
instead of different files spread throughout the "/mods/" 
directory.

	I have also removed Xe_CREATURE's custom installation-helper-tool.
What this tool did was read tags.dat to see how many tags needed
to be added to accomodate his mod, and then pass that information
onto tagtool in the form of "duplicate 0" commands until the
required index was reached. 

	I've replaced his tool with a tool of my own 
(https://github.com/jabukufo/FastIndexGen)
which reads tags.dat in a similar way, but instead of passing that 
information onto tagtool to do thousands of HDD writes 
(which is very time consuming), it patches up all of the indices 
in tags.dat and writes it to the HDD ina single cycle. This saves 
a few minutes on the installation.

	The tool i substituted is a command-line tool which requires no
additional user input - which streamlines the installation
process when used via Foundation Mod Manager.

	No changes have been made to any of the playable content within
the mod. Only the installation process has been touched, and it
should be 100% compatible with clients/servers that installed
with the old installer.

	If you have ANY issues with this installer, you can find the
original at:
https://www.reddit.com/r/HaloOnline/comments/4j9g4o/flatgrass_r09_hangemhigh_update_0511_new_items/

	Huge thanks to Xe_CREATURE for creating Flatgrass, and all the work
he put into creating this mod. For paving the way for custom maps
such as Lockout, Hangemhigh, and Station to be made. And of course for setting up
the 99.9% of the installer that I didn't touch.