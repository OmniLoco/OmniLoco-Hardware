OmniLoco Hardware
=============

The official repository for all of the hardware used by and created for the OmniLoco
project.

Repository Contents
-------------

### Top Level

* OmniRotor -- Sources for the OmniRotor platform, a sophisticated autonomous aircraft controller.
* Library -- Script files for individual EAGLE packages, symbols and devices. See below for more
information.

### Tools

* OmniRotor_PogoPlate -- Used for the automated programming and testing of production OmniRotor devices.

EAGLE Library
-------------
The EAGLE library used for the OmniLoco project has been split up into individual package,
symbol and device script files. This is done so git can track the changes of each individual
part of the library, rather than simply tracking one monolithic binary file.

Exporting the library must be done before every commit which which includes changes to the
library. This process could be automated, although it's much easier to do it by hand for now.

### Building the library
1. Open a new library (or open an existing OmniLoco library)
2. Run the lbrbuild.ulp script (located in the `Library` directory)
3. Point to the generated (or downloaded from git) `librarydefaults.scr` when prompted
4. All the packages/devices/symbols are added to the new/existing library

### Exporting the library
1. Open the OmniLoco library
2. File>Export>Script (This will generate one large script with all the devices in it)
3. Save it (temporary!!) to the `Library` directory as `_full_library.scr`
4. Run the lbrdump.ulp script (located in the `Library` directory)
5. Open the exported library (from first step)

The method for exporting and building an EAGLE library using script files is adapted from 
[DangerousPrototypes][1].

Contributing
------------

1. Fork it.
2. Create a branch (`git checkout -b my_hardware`)
3. Commit your changes (`git commit -am "Added Awesome Changes"`)
4. Push to the branch (`git push origin my_hardware`)
5. Create an issue with a link to your branch, or submit a pull request
6. Enjoy a refreshing beverage and wait

[1]: http://dangerousprototypes.com/docs/Dangerous_Prototypes_Cadsoft_Eagle_parts_library
