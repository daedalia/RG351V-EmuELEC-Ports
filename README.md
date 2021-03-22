# RG351V-EmuELEC-Ports
I have taken these scripts & folders from the 351ELEC firmware for the RG351P&M devices and tweaked them so they play nice with the default firmware shipped with the RG351V devices. 

## Configure EmuELEC
First we need to tell EmuELEC to look on the SD card where our ROMs live, best place for the "Ports" to be.

Find the following file on your device. 
`/storage/.config/emulationstation/es_systems.cfg`
- Back it up.
- Open up the file and find the system node with following sub node `<name>ports</name>`
- There will be a `<path>` node at the same level, change the value to `/storage/roms/ports` the final line should read `<path>/storage/roms/ports</path>`

## Drop in the ports
- Download the latest release from the releases section.
- Place the contents of the release package into the `ports` folder in your `roms` directory, create it if it doesn't already exist.

## Finally
I have only tested Cave Story & Quake. Shareware version of Quake is included. You may have to source game files for the other "Ports" to work.
