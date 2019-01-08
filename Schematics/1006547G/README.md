# Introduction

This folder contains the transcription of the original Apollo Program drawing 1006547G to KiCad.  This is the electrical schematic for Block I AGC module A33/A34.  We also have revisions 1006547- through 1006547F of the original drawing, though they have not been transcribed to CAD.  1006547- is significantly electrically different from the others.

_Prior_ to the availability of the original schematic drawings for module A33/A34, the schematics for this module were "recovered" from AC Electronics document ND-1021041 as a different set of KiCad files, referred to as [1006547r](https://github.com/virtualagc/virtualagc/edit/schematics/Schematics/1006547r).  Now that CAD files from both the original and from ND-1021041 are available, it is a useful proofing method, as well as a way to judge the accuracy of ND-1021041, to compare the netlists of these two implementation of 1006547 in CAD.  

There is [a Python script](https://github.com/virtualagc/virtualagc/edit/schematics/Scripts/netlistCompare.py) to assist in carrying out this comparison.  I don't claim the script is perfect or all-inclusive, but it did find stuff, and after I fixed up those things it did stop detecting them.

The reason a script is needed rather than a simple text comparison is that various factors need to be ignored in the comparison, and thus some semantic understanding of what's going on is needed:

* Different reference designators for NOR gates
* Different input-pin assignments in NOR gates
* Different naming of backplane signals, in cases where ND-1021041 _does not_ provide explicits name for them.

Differences which can be detected using this method, once the factors above are discounted, are:

* Missing components in one or the other netlist.
* Missing component pins in one or the other netlist.
* Different naming of backplane signals, in cases where ND-1021041 _does_ provide explicit names for them.
* Different connectivity.

The differences that are detected are then either transcription errors (which are fixed within the CAD files themselves), legitimate differences in conventions (such as "(NC)" vs "N.C." for no-connects), or else are actual differences that require, or at least invite, resolution.  The findings relating to the actual differences are noted below.

# Connector Pin 61 Discrepancy

The backplane signals associated with this pin seem to have changed over time, as well as differing from ND-1021041:

|Drawing   |Module A33  |Module A34  |
|----------|------------|------------|
|1006547-  |(left blank)|(left blank)|
|1006547A  |Q2X/        |F12A/       |
|1006547B  |Q2X/        |F12A/       |
|1006547C  |Q2X/        |F12A/       |
|1006547D  |Q2X/        |F12A/       |
|1006547E  |N.C.        |F12A/       |
|1006547F  |N.C.        |F12A/       |
|1006547G  |MNHSBF      |F12A/       |
|ND-1021041|B2/         |0VDC        |

I have no explanation to offer at this time.

# Connector Pin 57 Discrepancy

This is associated with the issue above, because the input signal from pin 61 passes through inverter 52331/53331 and is presented to pin 57.

|Drawing   |Module A33  |Module A34  |
|----------|------------|------------|
|1006547-  |M25CPS      |SBF         |
|1006547A  |SBF         |M25CPS      |
|1006547B  |SBF         |M25CPS      |
|1006547C  |SBF         |M25CPS      |
|1006547D  |SBF         |M25CPS      |
|1006547E  |N.C.        |M25CPS      |
|1006547F  |N.C.        |M25CPS      |
|1006547G  |SBF         |M25CPS      |
|ND-1021041|SBF         |N.C.        |

Again, I have no explanation at this time.
