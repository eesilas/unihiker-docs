### **Description**
Showing circle on the UNIHIKER screen
### **Syntax**
**GUI.draw_circle(x, y, r, width, color, onclick)**
### **Parameters**
**x**:  The x-coordinate where the circle is displayed on the UNIHIKER screen.  
**y**:  The y-coordinate where the circle is displayed on the UNIHIKER screen.  
**r**:  The radius of the circle.  
**width**: The width of the circle.
**color**:  The colour of the circle.  
**onclick**:  The callback function triggered when the circle is clicked.  
### **Return**
**Circle object
### **Example Description**
In this example, our main goal is to display a grey circle on the UNIHIKER screen and bind it to a click callback function.  
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  

### **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class, and call the draw_circle() function through this object to display the circle and set the parameters.  

```python
from unihiker import GUI   # Import the package
gui = GUI()  # Instantiate the GUI class

# Draw a circle on the GUI with the specified coordinates and parameters
# The circle is centered at (x=120, y=150) with a radius of 80 pixels
# The width of the circle's outline is set to 5 pixels
# The color of the circle is specified as "grey"
# When the circle is clicked, the lambda function is executed, which prints "circle clicked" to the console
gui.draw_circle(x=120, y=150, r=80, width=5, color="grey", onclick=lambda: print("circle clicked"))

import time
while True:
    # Add a delay to prevent the program from exiting and to observe the effects
    time.sleep(1)
```  

**Program Effect:**
![image.png](img/6.draw_circle()/1718940543795-c8cd546c-4169-42c6-b4d5-bafcb5e89f0c.png){width=300, style="display:block;margin: 0 auto"}  

---

 