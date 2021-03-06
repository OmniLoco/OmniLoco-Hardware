OmniLoco Hardware
=================

The official repository for all of the hardware used by and created for the OmniLoco
project.

Repository Contents
-------------------

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

### Building the library from this repo
1. Open a new library (or open an existing OmniLoco library)
2. Run the lbrbuild.ulp script (located in the `Library` directory)
3. Point to the generated (or downloaded from git) `librarydefaults.scr` when prompted
4. All the packages/devices/symbols are added to the new/existing library

### Exporting the library after making changes
If you are on Windows and using EAGLE 6.3.0 you can use the `Library/_dump_library.bat` script

1. Open the OmniLoco library
2. File > Export > Script (This will generate one large script with all the devices in it)
3. Save it to the `Library` directory as `_full_library.scr`
4. Run the lbrdump.ulp script (located in the `Library` directory)
5. Open the exported library file (`_full_library.scr` from step 3)

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


License
-------
All OmniLoco hardware is open source and compliant with the [Open Source Hardware Definition][2].

Copyright (c) 2012 by the OmniLoco Foundation. This work is made available under the terms of the Creative Commons Attribution-ShareAlike 3.0 license, http://creativecommons.org/licenses/by-sa/3.0/.

<img src="http://oshwlogo.com/logos/oshw-logo-100-px.png" alt="Open Source Hardware" height="55px"/>
<img src="http://mirrors.creativecommons.org/presskit/buttons/88x31/png/by-sa.png" alt="CC-BY-SA" height="55px"/>

[1]: http://dangerousprototypes.com/docs/Dangerous_Prototypes_Cadsoft_Eagle_parts_library
[2]: http://freedomdefined.org/OSHW#Open_Source_Hardware_.28OSHW.29_Definition_1.0