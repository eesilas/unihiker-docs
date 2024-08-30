### **Description**
Read the analog value from the specified IO pin.

- UNIHIKER supports 8-channel 12-bit high-precision analog input ADC, which means it will map the input voltage between 0 and 3.3V to an integer value between 0 and 4095.
- These pins support ADC function: P0, P1, P2, P3, P4, P10, P21, P22.


### **Common functions**

There are two ways to implement analog input, one is to use the read_analog() function of the Pin class, and the other is to use the read() function in the independent ADC class.



#### 1.1 Pin( )
| **Syntax**          | **PinObject = Pin(Pin.num, Pin.ANALOG)**    |  
| :--------------     | :--------------------      |
| **Description**     | Set the specified pin to ANALOG mode.       |  
| **Parameters**      | **Pin.num**: Pin number.  (P0, P1, P2, P3, P4, P10, P21, P22)        |
|                                   |  **Pin.ANALOG**: ANALOG mode. |
| **Return**          | Pin object    |  

#### 1.2 read_analog( )
| **Syntax**          | **PinObject.read_analog()**      | 
| :--------------     | :--------------------      |
| **Description**     | Call the Pin object to read the analog value.      |  
| **Parameters**      | **None |
| **Return**          | Digital quantity converted from analog quantity. (0~4095)   |  


#### 1.3 ADC(Pin( ))
| **Syntax**          | **AdcObject = ADC(Pin(Pin.num))**         | 
| :--------------     | :--------------------      |
| **Description**     | Generate an ADC class object for the specified pin.       |  
| **Parameters**      | **Pin.num**: Pin number.    (P0, P1, P2, P3, P4, P10, P21, P22)      |  
| **Return**          | ADC object    |  

#### 1.4 read()
| **Syntax**          | **AdcObject.read()**         |  
| :--------------     | :--------------------      |
| **Description**     | Call the Pin object to read the analog value.       |  
| **Parameters**      | **None                    |  
| **Return**          | Digital quantity converted from analog quantity. (0~4095)   |  




### **Example Description**
Below is a sample code using the PinPong Library to print the analog value of the UNIHIKER P21 pin.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)
### **Example Code**
```python
# -*- coding: UTF-8 -*-
# Experiment Effect: Print the analog value of the UNIHIKER P21 pin
# Wiring: Connect a potentiometer module to the UNIHIKER P21 pin
import time
from unihiker.board import Board, Pin ,ADC

Board().begin()  # Initialize the UNIHIKER
# ADC analog input pins supported: P0 P1 P2 P3 P4 P10 P21 P22
# adc21 = ADC(Pin(Pin.P21))  # Use Pin object with ADC to enable analog input - Method 1
adc21 = Pin(Pin.P21, Pin.ANALOG)  # Initialize the pin as an analog input - Method 2

while True:
    # v = adc21.read()  # Read the analog signal value from pin A0 - Method 1
    v = adc21.read_analog()  # Read the analog signal value from pin A0 - Method 2
    print("P21 =", v)
    time.sleep(0.5)  # Wait for 0.5 seconds
```
**Program Effect:**
![image.png](img/3_Analog_Input_ADC_/1722840105862-b3479334-2ef9-4f12-9d8c-8974c0bfd11c.png)


---
