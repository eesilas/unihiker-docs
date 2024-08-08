### **Description**
Showing text with digital effect on the UNIHIKER screen
### **Syntax**
**GUI.draw_digit(x, y, text, color, onclick, origin, font_size)**
### Parameters
**x**:  The x-coordinate where the text is displayed on the UNIHIKER screen.  
**y**:  The y-coordinate where the text is displayed on the UNIHIKER screen.  
**text**:  The content to be shown on the screen.  
**color**:  The color of the text.  
**onclick**:  The callback function triggered when the object is clicked.  
**origin**:  The alignment position. Default is the top-left corner.  
**font_size**:  The font size of the text.  
### **Return**
**digit object
### **Example Description**
In this example, our goal is to display the text "2023-09-08" on the UNIHIKER screen. The text will be in red color, with a font size of 25 and centered alignment. Additionally, we want to apply a digital-style effect to the text.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  


### **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class, and call the draw_digit() function through this object to display the text and set the parameters.  


```python
from unihiker import GUI   #import pack
import time

gui=GUI()  ##Instantiate GUI class

gui.draw_digit(x=120, y=160, text='2023-09-08', origin = "center",color="red",font_size=25)#Digitel type font display

while True:
    time.sleep(1)
```  

**Program Effect:**  
![image.png](img/2.draw_digit()/1718939274262-f165b42e-41e2-4531-983c-e87cada3e7fe.png){width=300, style="display:block;margin: 0 auto"}  
  
### **Notes and Warnings**
If you want the text to have a simulated digital display effect on UNIHIKER, your text parameter needs to be a number or an English letter.  

---  


