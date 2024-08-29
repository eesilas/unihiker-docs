### **Description**
Create a fill clock on the UNIHIKER screen.

### **Syntax**
**GUI.fill_clock(x, y, r, h, m, s, color,fill,style, onclick)**
### **Parameters**
- **x**:  The x-coordinate where the clock is displayed on the UNIHIKER screen.  
- **y**:  The y-coordinate where the clock is displayed on the UNIHIKER screen.  
- **r**:  The radius of the clock.  
- **h**:  The hours displayed on the clock.  
- **m**:  The minutes displayed on the clock.  
- **s**:  The seconds displayed on the clock.  
- **color**:  The border colour of the clock.  
- **fill**:  The fill colour of the clock.  
- **style**:  The preset mode, with two options currently available: "dark" and "light".  
- **onclick**:  The callback function triggered when the clock is clicked.  
### **Return**
**Fill clock object
### **Example Description**
In this simple example, we aim to display two clocks on the UNIHIKER screen. The fill colour of the first clock is sky blue, displaying the time as 3:04:05. The fill colour of the second clock is black, showing the time as 6:07:08.  
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  


### **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class, and call the fill_clock() function through this object to display the clock and set the parameters.  


```python
from unihiker import GUI   # Import the package
gui = GUI()  # Instantiate the GUI class

# Draw a filled clock at the specified position with the given parameters
# The clock's hands will be positioned based on the provided hour, minute, and second values
# The clock will be filled with the specified fill color
# The clock's outline color is set to (255, 255, 255)
# When the clock is clicked, the lambda function is executed, which prints "clock1 clicked" to the console
gui.fill_clock(x=120, y=100, r=60, h=3, m=4, s=5, color=(255, 255, 255), fill="#57b5ff", onclick=lambda: print("clock1 clicked"))

# Draw a filled clock with a dark style at the specified position with the given parameters
# The clock's hands will be positioned based on the provided hour, minute, and second values
# The clock will be filled with the default dark style colors
# When the clock is clicked, the lambda function is executed, which prints "clock2 clicked" to the console
gui.fill_clock(x=120, y=230, r=60, h=6, m=7, s=8, style='dark', onclick=lambda: print("clock2 clicked"))

import time
while True:
    # Add a delay to prevent the program from exiting and to observe the effects
    time.sleep(1)

```  

**Program Effect:**
![image.png](img/6.fill_clock()/1718941607479-360259fa-26cf-4f30-9108-b2ded2de8e98.png){width=300, style="display:block;margin: 0 auto"}  

---  


