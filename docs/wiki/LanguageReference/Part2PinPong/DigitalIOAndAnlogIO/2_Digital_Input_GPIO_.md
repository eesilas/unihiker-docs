### **Description**
The digital input channel converts external signals into high or low levels of voltage or current, and then transmits them to the control system. The UNIHIKER GPIO interface allows for the reading of values from a specified digital pin, either HIGH level or LOW level.
### **Common functions**  
| `Object.value()`    |                            |
| :--------------     | :--------------------      |
| **Description**     | Input digital level.       |  
| **Syntax**          | **Object.value()**         |  
| **Parameters**      | **None                     |  
| **Return**          | HIGH level or LOW level    |  

  
| `Object.read_digital()`    |                            |
| :--------------     | :--------------------      |
| **Description**     | Input digital level.       |  
| **Syntax**          | **Object.read_digital()**         |  
| **Parameters**      | **None                     |  
| **Return**          | HIGH level or LOW level    |  




### **Example Description**
The main focus of this project is to read input from an external digital sensor button module and use it to control the illumination of the onboard L-LED on the UNIHIKER. By monitoring the state of the sensor button module, the L-LED can be toggled between two states: illuminated and extinguished.
### **Hardware Required**

- [UNIHIKER]()
- [Gravity: Digital Push Button (Yellow)](https://www.dfrobot.com/product-73.html)
- [Gravity: Digital Piranha LED Module - Red](https://www.dfrobot.com/product-471.html)
### **Example Code**
To initialize the P23 pin as a digital input on UNIKIKER, you can use the code below. Within a loop, the state of the P23 pin is continuously read to determine if it is in a high logic level. This information is then displayed through the terminal, with a "1" output when the button is pressed. Additionally, the value of the P23 pin can be used to control the state of the onboard LED (L light), allowing for the external button module to govern the status of the LED.
Note:

- If the pin is not connected to anything, digitalRead() can return either a HIGH level or LOW level, which can change randomly.
- All pins on the UNIHIKER development board are capable of digital input, operating at a voltage level of 3.3V.
```python
# -*- coding: UTF-8 -*-
# Experiment Effect: Use the button to toggle the state of the blue LED labeled "L" on the back of the UNIHIKER.
# Wiring: Connect a button module to the UNIHIKER P23 interface
import time
from pinpong.board import Board, Pin

Board().begin()  # Initialize the UNIHIKER

btn = Pin(Pin.P23, Pin.IN)  # Initialize the pin as an input pin
led = Pin(Pin.P21, Pin.OUT)  # Initialize the LED pin as an output pin

while True:
    # v = btn.value()  # Read the pin level - Method 1
    v = btn.read_digital()  # Read the pin level - Method 2
    print(v)  # Print the read pin level to the terminal
    # led.value(v)  # Set the LED pin according to the button state - Method 1
    led.write_digital(v)  # Set the LED pin according to the button state - Method 2
    time.sleep(0.1)  # Wait for 0.1 seconds

```
**Program Effect:**
![image.png](img/2_Digital_Input_GPIO_/1722838953234-a191f90e-311b-41b7-9e96-c35b946d8a15.png)



---
