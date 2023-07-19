# X-RayCalc 3

X-Ray Calc 3 is a revised and improved version of software for computer simulation of X-ray reflectivity, including normal incidence and grazing incidence X-ray reflectometry (NIXR and GIXR). Find more information about the previous version here https://linkinghub.elsevier.com/retrieve/pii/S2352711019303681

In this version, the automatic optimization based on modified LFPSO algorithm was implemented (see https://ieeexplore.ieee.org/document/10066334/ for further details).

The X-Ray Calc distribution contents several demonstration projects located in the Examples folder To see the demos, click the Open button, navigate to the Examples folder, and select a project file.

2023-07-18 3.0.4
Added:
 - Popup menu for stacks
 - Popup menu for layers
 - Some settings
Fixed/Reworked
 - Poly Fitting
 - Stack selection
 - Global refactoring (Clearing [dcc32 Warnings/Hints]) 

2023-07-12 3.0.4 beta
Fixed:
 - Memory leaking
Added:
 - Data curve smoothing
 - Undo for layer operations


2023-07-06 3.0.3
Fixed:
 - Bugs in the interface (GitHub #12,8,9,13,14,18)
 - internal LFPSO optimizations
Added: 
 - Fitting by polynomial distributions
Changed
 - "Gradient editor" replaced with general "Functional profile editor" 

2023-06-26 3.0.2

Fixed:
 - Bugs in the interface (GitHub #15, #19, #20, #22)
 - Re-seeding in Shake LFPSO
Changed
 - Adding a new material
 - Optimizations of fitting algorithms
Added:
  - Materials selection in "New materials" 

2023-06-19  3.0.1

Fixed: 
  -  Calculation by the wave is not working
Added:
  -  Simple text editor for structure's JSON
  -  Viewer/editor for binary Henke tables  


