# LAB4_Industrial_robotic

Universidad Nacional de Colombia

Robótica

## Authors:
- Javier Caicedo Pedrozo
- Diego Chacón 
- Alejadro Triana


## Tool design.

In order to design a tool for IRB140, the Robot catalog and manual was checked, in there we find some design planes usefull to elaborate the tool; 

[![Herramienta.jpg](https://i.postimg.cc/FHGzwKhJ/Herramienta.jpg)](https://postimg.cc/k267bq6n)

For the development of the tool we took into account the dimensions of the flange on the tool, which are provided in the manual of the robot, this in order to ensure the proper attachment conditions of our tool to the flank of the IRB140. The tool has a simple geometry, aiming for an efficient and economical design, it is worth mentioning that the design was made in 3D printing using PLA.

The following shows the components and dimensions of the tool.

### Tool dimensions: [Dimensions in mm]
<p align="center"><img src="https://i.postimg.cc/3JxJy8Rb/tool-medidas.png"</p>

### Dimensions of the cover:
<p align="center"><img src="https://i.postimg.cc/0jckt3tf/medidas-tapa.png"</p>

### 3D geometry of the tool:
<p align="center"><img src="https://i.postimg.cc/L8q9Txjt/modelo3D.png"</p>

### Real aspect of the tool:
<p align="center"><img src="https://i.postimg.cc/J4Y7ZfH7/tool-fis1.jpg"</p>
<p align="center"><img src="https://i.postimg.cc/tR54CZXx/tool-fis2.jpg"</p>


## Simulation in Robot studio.
  ### - Definition of the trajectories: (RAPID code)
For the definition of the trajectories in the RAPID module, we made use of three motion commands, MOVJ, MOVL and MOVC, whose functions and way of use of explained below.

### MOVC:
It is used to move the TCP of the tool describing a circular trajectory towards a specific point, it is worth noting that while the movement is executed, the orientation remains invariant with respect to the circle.


MoveC p1, p2, v500, z30, tool2;

Where:
P1: starting point of the trajectory.
P2: end point of the trajectory.
V500: velocity.
Z30: zone or approach data.
Tool 2: Tool that will execute the action.

MOVJ: 
Allows to move the robot from one point to another in an agile way, when the path between the points is not required to be a straight line.

Structure:
MoveJ p1, vmax, z30, tool2;

Where: 
P1: point to which the TCP of the tool should be directed.
Vmax: velocity.
Z30: zone or approach data.
Tool 2: tool that will execute the action.

MOVL:

Allows to move the TCP of the tool to a given point following a straight line. This instruction also allows to reorient the tool when you want the TCP to remain stationary.

Structure:
MoveL p1, v1000, z30, tool2;
Where:
P1: point to which the TCP of the tool is to be directed.
V1000: velocity.
Z30: zone or approach data.
Tool 2: Tool that will execute the action.

Another important element in the development of the module is the definition of constants, with which it was possible to establish in the program the coordinates of the points of interest for the trajectories, as well as the UCS (User Coordinate System), which is the user-defined coordinate system, and allows the creation of customized reference points.

 

Firstly the movement was designed in a piece of paper with some measures and key points; moreover is really important to check the dimensional space where the tool can write over the board.
[![JSD-PApel.jpg](https://i.postimg.cc/02NDDRvd/JSD-PApel.jpg)](https://postimg.cc/9zvDHkrr)




As a result the following path was obtained
[![JSD-Rstudio.jpg](https://i.postimg.cc/t4ZRGDdH/JSD-Rstudio.jpg)](https://postimg.cc/18S1pGYW); also in order to joint these tarjets, MOVEJ and MOVEL was used, it depends on the movemente requirements, basically whether the movement seeks to keep orientation (movel) and keep stable the final efector along a trayectory or not (movej). 
MoveC was also used to make circular trajectories, in that case, it is needed to have the middle point and the final point of the circular trayectory.

To set up each trayectory is also requiered to specify the velocity and accuracy of the path.

The tool was also imported in the document, tool calibration supports to have better simulations and results. this tool also has assigned a frame, that it is insert in the workobject of the flange.

Work object is a frame that involves the work space, with this work object the paths and objects can be attached to this frame and all the commands, tarjets, trayectories will be set depending on the configuration of this frame; for instance, 

## Tool calibration.
The calibration of the tool can be done in two ways, the first way, the manual way where we already have the tool installed on the robot, with the help of the FlexPendant we will create a new variable where the calibration will be stored.
We have several options to perform the tool calibration manually, which are chosen from the flexPendant first. We chose the 3-point option, the idea of this option is to position the robot in 3 different poses, at the same point which is located on the tool, stored in figure 2.
[![image.png](https://i.postimg.cc/FKG7sffB/image.png)](https://postimg.cc/PLptS5QW)
this 3-point method is not very effective as it fails to minimise the error rate, with the following results.
[![image.png](https://i.postimg.cc/ZRV3g7F0/image.png)](https://postimg.cc/2bLVLxtf)
for a second test we will use 3 points and parallel to the vector Z, this way the system will be more robust and we will be able to minimise the error rate.

the method of calibration of the tool described above is carried out where the following values are obtained:

Max error= 0.96 mm 

min error=0.36 mm

the other method is to perform the same procedure virtually in RobotStudio to get the tool calibration directly in the code.    







## Calibration and Robot control.   (video) 


## issues 
robot Configurations cannot be reached in some points of the path, to keep the orientation in some pieces of the path; speccially in the developing of the "S" letter the configurations changes the articulations from positive to negative wrist, at this point , the targets was changed and some orientation parameters was also configured to maintain a fluid path.  
At the moment the module was loading the flex pendant has shown some problems with the tool

## Conclutions. 

## Bibliography
  - ABB. Manual de referencia técnica. Instrucciones funciones y tipos de datos de RAPID. Recuperado de: http://personal.biada.org/~jhorrillo/INSTRUCCIONS%20RAPID.pdf 

