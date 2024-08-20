### **Description**
The UNIHIKER microcontrollers come equipped with a Light Sensor, which allows for the acquisition of ambient light intensity.
Note: The ambient light intensity values output by the light sensor are in analog form, ranging from 0-4095, and are not expressed in lux units.
### **Syntax**
**light.read()**
Note: The photovoltaic sensor is directly connected to the P29 interface in the circuitry of UNIHIKER, making it possible to read its value through the ADC input method.
### **Parameters**
**None 
### **Return**
****The range of the ambient light intensity values is from 0 to 4095.**
### **Example Description**
The code below is used to sense changes in ambient light through the light intensity sensor on UNIHIKER.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)
### **Example Code**
```python
# -*- coding: UTF-8 -*-

import time
from pinpong.board import *
from pinpong.extension.unihiker import *

Board().begin()  # Initialize the UNIHIKER

while True:
    light_value = light.read()  # Read the ambient light intensity
    print("Ambient light intensity: %d" % (light_value))  # Print the ambient light intensity to the terminal
    time.sleep(0.1)  # Wait for 0.1 seconds to maintain the state
```
**Program Effect:**
![image.png](img/3_Light_Sensor/1722825676701-ff85f0e5-8044-417e-a34a-287f27333449.png)
