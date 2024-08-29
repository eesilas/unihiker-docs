### **Description**
Create a rounded rectangle on UNIHIKER screen
### **Syntax**
**GUI.draw_round_rect(x, y, w, h, r, width, color , onclick)**
### **Parameters**
**x**:  The x-coordinate where the rectangle is displayed on the UNIHIKER screen.  
**y**:  The y-coordinate where the rectangle is displayed on the UNIHIKER screen.  
**w**:  The width of the rectangle.  
**h**:  The height of the rectangle.  
**r**:   The radius of the rounded corners.  
**width**:  The thickness of the border.  
**color**:  The colour of the border.  
**onclick**:  The callback function triggered when the rectangle is clicked.  
### **Return**
**Rounded rectangle object
### **Example Description**
In this simple example, we aim to display a grey rounded rectangle at the centre of the UNIHIKER, bound to a click callback function. The rectangle's width is 140, its height is 120, the border's thickness is 3, and the radius of the rounded corners is 8.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  

### **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class, and call the draw_round_rect() function through this object to display the rounded rectangle and set the parameters.  

```python
from unihiker import GUI   # Import the package
gui = GUI()  # Instantiate the GUI class

# Draw a rounded rectangle on the GUI with the specified coordinates and parameters
# The rounded rectangle is located at (x=50, y=50) with a width of 140 pixels and a height of 120 pixels
# The radius of the corners is set to 8 pixels
# The border width of the rounded rectangle is 3 pixels
# The color of the rounded rectangle is specified as "grey"
# When the rounded rectangle is clicked, the lambda function is executed, which prints "round rect clicked" to the console
gui.draw_round_rect(x=50, y=50, w=140, h=120, r=8, width=3, color="grey", onclick=lambda: print("round rect clicked"))

import time
while True:
    # Add a delay to prevent the program from exiting and to observe the effects
    time.sleep(1)
```  

**Program Effect:**
![image.png](img/4.draw_round_rect()/1719482415253-c865fe29-0d90-4e7f-872d-206ad13c87fe.png){width=300, style="display:block;margin: 0 auto"}  

---  

