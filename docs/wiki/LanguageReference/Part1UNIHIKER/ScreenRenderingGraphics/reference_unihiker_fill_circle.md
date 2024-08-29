### **Description**
Create a circle on the UNIHIKER screen
### **Syntax**
**GUI.fill_circle(x, y, r,color , onclick)**
### **Parameters**
**x**:  The x-coordinate where the center of the circle is displayed on the UNIHIKER screen.  
**y**:  The y-coordinate where the center of the circle is displayed on the UNIHIKER screen.  
**r**:  The radius of the circle.  
**color**:  The fill colour of the circle.  
**onclick**:  The callback function triggered when the circle is clicked.  
### **Return**
**Filled circle object
### **Example Description**
In this simple example, our goal is to display a green filled circle on the UNIHIKER and bind it to a click callback function. The circle has a radius of 80.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  

### **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class, and call the fill_circle() function through this object to display the circle and set the parameters.  

```python
from unihiker import GUI   # Import the package
gui = GUI()  # Instantiate the GUI class

# Draw a filled circle on the GUI with the specified coordinates and parameters
# The circle is centered at (x=120, y=150) with a radius of 80 pixels
# The color of the circle is specified as "blue"
# When the circle is clicked, the lambda function is executed, which prints "fill circle clicked" to the console
gui.fill_circle(x=120, y=150, r=80, color="blue", onclick=lambda: print("fill circle clicked"))

import time
while True:
    # Add a delay to prevent the program from exiting and to observe the effects
    time.sleep(1)
```
**Program Effect:**
![image.png](img/7.fill_circle()/1719568689882-b34a062a-d7a5-4a66-845e-510fcc354379.png){width=300, style="display:block;margin: 0 auto"}  

---  


