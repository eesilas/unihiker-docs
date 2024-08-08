## **Project Introduction**
In this project, the add_button function from the GUI class was utilized to demonstrate the creation of buttons on the touch screen of the Unihiker. The first button will display its state upon clicking, while the second button hides all text.  

![555.gif](img/5. Interactive Button Screen/1720429015598-a3c53f0c-eb47-4375-aa28-b296b760d686.gif){width=300, style="display:block;margin: 0 auto"}   


## **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  

## **Code** 

In this example, two buttons were created using the add_button function. Each button is assigned its respective callback function, "A" and "B". In function "A", the text of the first button is updated to "BtnA is Clicked", while the text of the second button remains unchanged. In function "B", both buttons have their text cleared, as demonstrated in the Demo effect section.    

```python

from unihiker import GUI
import time

#Instantiate a GUI object.
u_gui=GUI()

while True:
    
	# Callback function
    def A():
        #When button A clicked, onclick disabled 
        u_gui.add_button(text="BtnA is Clicked",x=25,y=100,w=190,h=40)
        u_gui.add_button(text="hide",x=25,y=170,w=190,h=40,onclick=B)
     
    def B():
        
        #Click button B clicked, text removed and onclick disabled 
        u_gui.add_button(text="",x=25,y=100,w=190,h=40,onclick=A)
        u_gui.add_button(text="",x=25,y=170,w=190,h=40)

    #Create buttons with text; set their size, location and callback functions 
    u_gui.add_button(text="Click",x=25,y=100,w=190,h=40,onclick=A)
    u_gui.add_button(text="Hide",x=25,y=170,w=190,h=40,onclick=B)
    while True:
        
        #Prevent the program from exiting or getting stuck
        time.sleep(0.1)
```  

## **Demo Effect**
![555.gif](img/5. Interactive Button Screen/1720429015598-a3c53f0c-eb47-4375-aa28-b296b760d686.gif){width=300, style="display:block;margin: 0 auto"}  

---  



