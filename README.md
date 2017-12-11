# Sean's Anet A8 Chimera Mount

This is an OpenSCAD project to create a 3d printable Chimera extruder mount for the Anet A8 3D Printer.

![progress screenshot of rendering of project](/graphics/progress.png?raw=true "Progress")

# What is the Anet A8

The Anet A8 is a low-cost 3D printer kit from China which clones the Prusa I3, an open source 3D printer.  Because of it's sales volume the kit can commonly be purchased for $180 USD or less.

# What is the Chimera Hotend

[The Chimera Hotend](https://wiki.e3d-online.com/Cyclops_&_Chimera_Documentation#Mounting_Considerations) is a hot-end from E3D which supports the extrusion of two different types of plastic while using the same heatsink.  It reduces the overall size of the hotend compared to two separate hotends.

# Can this work for other printers?

It is easy to customize for different distances between the 8mm horizontal rods.  Being open source, it should be possible to modify this file to work for your printer.

# How was this designed?

This mount is designed using OpenSCAD, free open source 3d CAD software.  OpenSCAD is a script-based modeller which makes it possible to alter this project, such as modifying it for other printers or different hotends.

# How do I modify the files for my printer?

1. Open `chimera.scad` using [OpenSCAD](http://www.openscad.org/)
2. Using calipres, measure the outer distance between your horizontal linear rods in mm.
3. Set the `linearRodDistanceOuter` value to your measurement
4. Save the file

# How do I export an STL file?

1. Open `chimera.scad` using [OpenSCAD](http://www.openscad.org/)
2. Render the file by pressing F6
3. Go to File, Export, Export as STL
4. Save the STL File
5. Open the STL file with your slicing software.

# How do I recomment improvements?

1. Create a Github account.
2. File an "issue" for the project.

# How do I contribute?

1. Find an issue from the issue tracker.
2. Fork the project
3. Commit headers must be prefixed with the issue number, followed by a space, then the commit header
4. Create a pull request

# How is it licensed?

It is licensed under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.txt).  You have the freedom to:

* Use the files for any purpose
* Change the files to suit your needs
* Share the files with your friends and neighbors
* Share the changes you make
