### **Description**
Create a clock on the UNIHIKER screen.  

### **Syntax**
**GUI.draw_clock(x, y, r, h, m, s, color, onclick)**  

### **Parameters**
- **x**:  The x-coordinate where the clock is displayed on the UNIHIKER screen.  
- **y**:  The y-coordinate where the clock is displayed on the UNIHIKER screen.  
- **r**:  The radius of the clock.  
- **h**:  The hours displayed on the clock.  
- **m**:  The minutes displayed on the clock.  
- **s**:  The seconds displayed on the clock.  
- **color**:  The colour of the clock.  
- **onclick**:  The callback function triggered when the clock is clicked.  
### **Return**
**Clock object
### **Example Description**
In this simple example, we aim to display an orange clock at the centre of the UNIHIKER screen, showing the time as 10:08:00.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  

### **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class, and call the draw_clock() function through this object to display the clock and set the parameters.
```python
from unihiker import GUI   # Import the package
gui = GUI()  # Instantiate the GUI class

# Draw a clock at the specified position with the given parameters
# The clock's hands will be positioned based on the provided hour, minute, and second values
gui.draw_clock(x=120, y=160, r=80, h=10, m=8, s=0, color="#f8ad30", onclick=lambda: print("clock clicked"))

import time
while True:
    # Add a delay to prevent the program from exiting and to observe the effects
    time.sleep(1)
```
**Program Effect:**  
![image.png](img/5.draw_clock()/1718941137575-c3c07ae6-0d6e-4118-b825-50c3c4918bde.png){width=300, style="display:block;margin: 0 auto"}  

---  


