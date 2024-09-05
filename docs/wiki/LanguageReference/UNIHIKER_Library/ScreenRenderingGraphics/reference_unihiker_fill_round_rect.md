### **Description**
Create a solid rounded rectangle on UNIHIKER screen
### **Syntax**
**GUI.fill_round_rect(x, y, w, h, r,color , onclick)**
### **Parameters**
**x**:  The x-coordinate where the rectangle is displayed on the UNIHIKER screen.  
**y**:  The y-coordinate where the rectangle is displayed on the UNIHIKER screen.  
**w**:  The width of the rectangle.  
**h**:  The height of the rectangle.  
**r**:   The radius of the rounded corners.  
**color**:  The fill colour of the rectangle.  
**onclick**:  The callback function triggered when the rectangle is clicked.  
### **Return**
**Filled rounded rectangle object
### **Example Description**
In this simple example, our goal is to display a green rounded rectangle on the UNIHIKER, bound to a click callback function. The rectangle has a width of 140, a height of 120, and rounded corners with a radius of 3.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  

### **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class, and call the fill_round_rect() function through this object to display the solid rounded rectangle and set the parameters.   

```python
from unihiker import GUI   # Import the package
gui = GUI()  # Instantiate the GUI class

# Fill a rounded rectangle on the GUI with the specified coordinates and parameters
# The rounded rectangle is located at (x=50, y=50) with a width of 140 pixels and a height of 120 pixels
# The radius of the corners is set to 3 pixels
# The color of the rounded rectangle is specified as "green"
# When the rounded rectangle is clicked, the lambda function is executed, which prints "fill round rect clicked" to the console
gui.fill_round_rect(x=50, y=50, w=140, h=120, r=3, color="green", onclick=lambda: print("fill round rect clicked"))

import time
while True:
    # Add a delay to prevent the program from exiting and to observe the effects
    time.sleep(1)
```  

**Program Effect:**
![image.png](img/5.fill_round_rect()/1719561272696-f643eed7-623f-4263-a6df-a982eb4eb58f.png){width=300, style="display:block;margin: 0 auto"}  
---  

