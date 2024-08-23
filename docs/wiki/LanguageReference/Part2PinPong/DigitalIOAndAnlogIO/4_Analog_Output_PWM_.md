### **Description**
PWM wave is a very effective technique for controlling analog circuits using the digital output of microprocessors, widely used in many fields from measurement, communication to power control and conversion. UNIHIKER supports 8 channels of 10-bit PWM output, corresponding to the following pins: P0, P2, P3, P10, P16, P21, P22 and P23.
### **Common functions**  


#### 1.1 PWM(Pin( ))
| **Syntax**          | **PWM(Pin(board,Pin.num))**         |  
| :--------------     | :--------------------      |
| **Description**     | Define a pin as an PWM output and control the output of PWM waves through functions.       |  
| **Parameters**      | **board:** UNIHIKER.  |
|                     | **Pin.num:** Pin number. |
| **Return**          | Continuous, time-varying current    |  


#### 1.2 duty( )
| **Syntax**          | **Object.duty(i)**         |  
| :--------------     | :--------------------      |
| **Description**     | Define a pin as an PWM output and control the output of PWM waves through functions.       |  
| **Parameters**      | **i:** Control the duty cycle of PWM waves.                |  
| **Return**          | Continuous, time-varying current    |  


#### 1.3 
| **Syntax**          | **Object.write_analog(i)**         |  
| :--------------     | :--------------------      |
| **Description**     | Define a pin as an PWM output and control the output of PWM waves through functions.       |  
| **Parameters**      | **i:**Control the duty cycle of PWM waves.                |  
| **Return**          | Continuous, time-varying current    |  


### **Example Description**
In this example, the UNIHIKER is first initialized with Board().begin(). Then, we use pwm0 = PWM(Pin(Pin.P21)) to initialize the pin, which can output a PWM wave. In the main loop, we use the range() function to generate a loop array and then use the pwm0.duty() function to adjust the PWM duty cycle. We can understand the principle of PWM output by observing the status of LED lights and the display of terminal numbers.  

### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)
- [Gravity: Digital Piranha LED Module - Green](https://www.dfrobot.com/product-632.html)

![](img/4_Analog_Output_PWM_/1720060887828-8dcafd88-7ad5-4094-a1e1-121ec785611e.png)
### **Example Code**
```python
# -*- coding: utf-8 -*-

#Experimental effect: Using PWM wave to control LED breathing light
#Wiring: Use a Windows or Linux computer to connect a blank board, and P21 to connect an LED light module
import time
from pinpong.board import Board,Pin,PWM #Import PWM class to achieve analog output

Board("UNIHIKER").begin()  #Initialize, select board type, do not input board type for automatic recognition
#P0 P2 P3 P8 P9 P10 P16 P21 P22 P23
pwm0 = PWM(Pin(Pin.P21)) #Input Pin into PWM to achieve analog output
#PWM supports a range of 0-1023
pwm0.freq(1000)  #set PWM frequence 
while True:  #loop
    pwm0.duty(0)
    time.sleep(2)
    for i in range(301):  #from 0 to 600
        pwm0.duty(i) 
        print(i) 
        time.sleep(0.02)   #delay 2us
    pwm0.duty(300) 
    time.sleep(2)    
    for i in range(301 , 0, -1):  #from 600 to 0
        pwm0.duty(i)  
        print(i)
        time.sleep(0.02)   #delay 2us 
```
**Program Effect:**
![](img/4_Analog_Output_PWM_/1721281972007-59254163-2790-4cc2-bcaf-d81a791a4d8a.gif)
![image.png](img/4_Analog_Output_PWM_/1722838066405-959c8cb5-e1f7-4ae4-ac49-bac81c3d7a95.png)


---
