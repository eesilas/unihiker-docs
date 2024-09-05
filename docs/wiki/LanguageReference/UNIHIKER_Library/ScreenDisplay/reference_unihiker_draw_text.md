### **Description**
Create a text object on the UNIHIKER screen.

### **Syntax**
**GUI.draw_text(x, y, w, text, color, origin, onclick, font_family,font_size,angle)**
### **Parameters**
- **x:** The x-coordinate where the text is displayed on the UNIHIKER screen. 
- **y:** The y-coordinate where the text is displayed on the UNIHIKER screen. 
- **w:** The width of the text displayed on the UNIHIKER screen. If the text exceeds this width, it will automatically wrap - to the next line. This parameter is optional. 
- **text:** The content to be displayed on the screen. 
- **color:** The color of the text. 
- **origin:** The alignment position. Default is the top-left corner. 
- **onclick:** The callback function triggered when the object is clicked. 
- **font_family:** The font type of the text. 
- **font_size:** The font size of the text. 
- **angle:** The rotation angle of the text.  
### **Return**
**Text object
### **Example Description**
In this simple example, our main goal is to display "Hello" at the bottom of UNIHIKER, and bind it with a click callback function.
At the same time, a string of blue numbers is displayed on the left side of the UNIHIKER screen.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  

### **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class, then invoke the draw_text() function through this object to display and configure the text parameters.  

```python
import time
from unihiker import GUI   #import pack

gui = GUI()  #Instantiate GUI class

# Callback function
def info_text_on_click():
    print("Text was clicked")

info_text = gui.draw_text(x=120, y=320, w=50 ,text='Hello',origin='bottom' ,onclick=info_text_on_click)

info_text2 = gui.draw_text(x=0, y=100, text='1234567890', color='#0000FF')

# Load the font file you downloaded, and the input parameter is the path of the local font file
# Font library download reference website: https://www.fontspace.com/category/led
#font_family = gui.load_font('Segment7-4Gml.otf') 
#gui.draw_text(x=20, y=80, text='13:11', font_size=40, font_family=font_family) #Use the specified font to display

while True:
    # Wait here to prevent program from exiting and stuck
    time.sleep(1)
```  
  
**Program Effect:**  
![image.png](img/1.draw_text()/1718939185451-ee46921a-9237-4bc9-8688-bfa6c132e26d.png){width=300, style="display:block;margin: 0 auto"}  

---  



