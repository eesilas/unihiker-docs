### **Description**
Showing image on UNIHIKER screen
### **Syntax**
**GUI.draw_image(x, y, w, h, image,origin,onclick)**
### **Parameters**
**x**:  The x-coordinate where the image is displayed on the UNIHIKER screen.  
**y**:  The y-coordinate where the image is displayed on the UNIHIKER screen.  
**w**:  The width of the image. This parameter scales according to the length and width of the smallest side and can be omitted. If both width and height parameters are omitted, the original image resolution will be maintained.  
**h**:  The height of the image. This parameter scales according to the length and width of the smallest side and can be omitted. If both width and height parameters are omitted, the original image resolution will be maintained.  
**image**:  The file name of the image to be displayed on the UNIHIKER screen, which can be a path or an image object.  
**onclick**:  The callback function triggered when the object is clicked.  
**origin**:  The alignment position. Default is the top-left corner. 
### **Return**
**image object
### **Example Description**
In this simple example, we will display an image named 'img.png' three times. Each time, the image will be positioned differently and vary in size.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  

### **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class, and call the draw_image() function through this object to display the image and set the parameters.    

```python
#  -*- coding: UTF-8 -*-
from unihiker import GUI  # Import the packag 
gui = GUI()               # Instantiate the GUI class

# Load and display an image at (0, 0) with the original size
img_image2 = gui.draw_image(x=0, y=0, image='img.png')

# Load and display an image at (120, 100) with a width of 80 and height of 50
# The image is centered and a lambda function is assigned to the onclick event
img_image = gui.draw_image(x=120, y=100, w=80, h=50, image='img.png', origin='center', onclick=lambda: print("image clicked"))

# Load and display an image using the PIL library at (10, 180)
img_image3 = gui.draw_image(x=10, y=180, image=Image.open('img.png'))

import time
while True:
    # Add a sleep to prevent the program from exiting and getting stuck
    time.sleep(1)

```  
  
**Program Effect:**  
![image.png](img/3.draw_image()/1718940279751-2d25a616-3e83-45be-9ce1-c7db05e0bba6.png){width=300, style="display:block;margin: 0 auto"}  
  
### **Notes and Warnings**
The image file needs to be placed in the same directory as this Python file.  

---  



