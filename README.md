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

Structure:

MoveC p1, p2, v500, z30, tool2;

Where:
- p1: starting point of the trajectory.
- p2: end point of the trajectory.
- v500: velocity.
- z30: zone or approach data.
- tool 2: Tool that will execute the action.

### MOVJ: 
Allows to move the robot from one point to another in an agile way, when the path between the points is not required to be a straight line.

Structure:
  
MoveJ p1, vmax, z30, tool2;

Where: 
- p1: point to which the TCP of the tool should be directed.
- vmax: velocity.
- z30: zone or approach data.
- tool 2: tool that will execute the action.

MOVL:

Allows to move the TCP of the tool to a given point following a straight line. This instruction also allows to reorient the tool when you want the TCP to remain stationary.

Structure:
MoveL p1, v1000, z30, tool2;

Where:

- p1: point to which the TCP of the tool is to be directed.
- v1000: velocity.
- z30: zone or approach data.
- tool 2: Tool that will execute the action.

Another important element in the development of the module is the definition of constants, with which it was possible to establish in the program the coordinates of the points of interest for the trajectories, as well as the UCS (User Coordinate System), which is the user-defined coordinate system, and allows the creation of customized reference points.




## Bibliografía
  - ABB. Manual de referencia técnica. Instrucciones funciones y tipos de datos de RAPID. Recuperado de: http://personal.biada.org/~jhorrillo/INSTRUCCIONS%20RAPID.pdf 
  
