## Weather system prototype

The prototype is an electronic system allowing the display of data from a wind vane or anemometer. 

## Requirements
- A XC2C64A CPLD
- a mechanical encoder in GRAY code 25LB22-G from GrayHill, 
- a cup anemometer 
- two micro-switches
- two LED bars (bar-graph) type DC-10YWA from Kingbright, 
- resistors, capacitors and other laboratory components. 

## Schematic of the prototype

![alt](Girouette_v2-1.jpg)

## Project specifications

The project aims at realizing the prototype of an electronic weather system processing and displaying information from a wind vane and an anemometer. The selection between the display of the data from the wind vane or the anemometer will be done with a first switch.

For the wind vane, only 16 wind directions will be identified (N, N-NE, NE, E-NE, E,...). Each of these positions, captured with a mechanical encoder in GRAY code, will be visually indicated to the user with an illuminated LED. It will also be possible to visualize with the help of LEDs, either the Gray code, or the equivalent code in natural binary. This selection will be made with a second switch. 

For the anemometer, the LEDs will be used to indicate the intensity of the wind, ie its speed. The higher the wind speed, the more LEDs will be illuminated. 

The meteorological system to be realized is made up of 3 subsystems : 
- a subsystem ensuring the conditioning of signals from the analog input elements, 
- a subsystem ensuring the processing of information, 
- a subsystem allowing the visualization of output information. 
