### **Description**
Showing line on the UNIHIKER screen
### **Syntax**
**GUI.draw_line(x0, y0, x1, y1, width, color, onclick)**
### **Parameters**
**x0**:  The starting x-coordinate where the line is displayed on the UNIHIKER screen.  
**y0**:  The starting y-coordinate where the line is displayed on the UNIHIKER screen.  
**x1**:  The ending x-coordinate where the line is displayed on the UNIHIKER screen.  
**y1**:  The ending y-coordinate where the line is displayed on the UNIHIKER screen.  
**width**:  The thickness of the line.  
**color**:  The colour of the line.  
**onclick**:  The callback function triggered when the line is clicked.  
### **Return**
**Line object
### **Example Description**
In this simple example, our main goal is to display a green line on the UNIHIKER, bound to a click callback function.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  

### **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class, and call the draw_line() function through this object to display the line and set the parameters.  

```python
from unihiker import GUI   # Import the package
gui = GUI()  # Instantiate the GUI class

# Draw a line on the GUI with the specified coordinates and parameters
# The line starts at (x0=40, y0=60) and ends at (x1=180, y1=60)
# The line has a width of 5 pixels
# The color of the line is specified as (122, 222, 44), representing an RGB color value
# When the line is clicked, the lambda function is executed, which prints "line clicked" to the console
gui.draw_line(x0=40, y0=60, x1=180, y1=60, width=5, color=(122, 222, 44), onclick=lambda: print("line clicked"))

import time
while True:
    # Add a delay to prevent the program from exiting and to observe the effects
    time.sleep(1)
```  

**Program Effect:**
![image.png](img/1.draw_line()/1719479668924-0daf5ce3-657e-4e40-9b3e-f4f68e327b46.png){width=300, style="display:block;margin: 0 auto"}  

---  


