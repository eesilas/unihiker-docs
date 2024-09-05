### **Description**
Create an emoji on the UNIHIKER screen.

### **Syntax**
**GUI.draw_emoji(x, y, w, h, emoji,duration,origin,onclick)**
### **Parameters**
- **x**:  The x-coordinate where the emoji is displayed on the UNIHIKER screen.  
- **y**:  The y-coordinate where the emoji is displayed on the UNIHIKER screen.  
- **w**:  The width of the emoji displayed on the UNIHIKER screen.  
- **h**:  The height of the emoji displayed on the UNIHIKER screen.  
- **emoji**:  The name of the emoji. You can use built-in emojis (Angry, Nerve, Peace, Shock, Sleep, Smile, Sweat, Think,Wink) or provide the path to a custom emoji image (in the format "name-number.png").  
- **duration**:  The interval time for switching images.  
- **origin**:  The alignment position. Default is the top-left corner. 
- **onclick**:  The callback function triggered when the object is clicked.  
### **Return**
**Emoji object
### **Example Description**
In this simple example, our main goal is to display "Wink" at the top-left corner of the UNIHIKER and "Smile" at the centre of the UNIHIKER, both bound to a click callback function.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  

### **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class, and call the draw_emoji() function through this object to display the emoji and set the parameters.  


```python
from unihiker import GUI   # Import the package
import time

gui = GUI()  # Instantiate the GUI class

# Draw an emoji at (0, 0) with a width of 100 and height of 100
# The emoji is "Wink" and lasts for 0.1 seconds
# The onclick event is assigned a lambda function that calls the "cb" function with "emojis clicked" as an argument
emj1 = gui.draw_emoji(x=0, y=0, w=100, h=100, emoji="Wink", duration=0.1, onclick=lambda: cb("emojis clicked"))

# Draw an emoji at (120, 200) with a width of 100 and height of 100
# The emoji is "Smile" and lasts for 1 second
# The origin is set to "center" and the onclick event is assigned a lambda function that calls the "cb" function with "emojis clicked" as an argument
emj2 = gui.draw_emoji(x=120, y=200, w=100, h=100, emoji="Smile", duration=1, origin="center", onclick=lambda: cb("emojis clicked"))

# Use the file path of multiple frame images in the same directory
# Files should be named custom-1.png, custom-2.png, custom-3.png, etc.
# gui.draw_emoji(x=0, y=0, w=100, emoji="custom", duration=0.2)

while True:
    time.sleep(1)  # Add a delay to prevent the program from exiting and to observe the effects
```  


**Program Effect:**  
  
![image.png](img/4.draw_emoji()/1718941056976-dc9168bf-e8c1-434e-9f35-1e72148c879e.png){width=300, style="display:block;margin: 0 auto"}  

---  


