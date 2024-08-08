## **2.1 on_a_click()**
### **Description**
Showing key 'A' clicks on the UNIHIKER board
### **Syntax**
**GUI.on_a_click(Name of the callback function)**
### **Parameters**
Name of the callback function
### **Return**
**None
## **2.2 on_b_click()**
### **Description**
Showing key 'B' clicks on the UNIHIKER board
### **Syntax**
**GUI.on_b_click(Name of the callback function)**
### **Parameters**
Name of the callback function
### **Return**
**None
## **2.3 on_key_click()**
### **Description**
Showing key clicks on the UNIHIKER board
### **Syntax**
**GUI.on_key_click(Key name, callback function name)**
### **Parameters**
Name of the callback function
### **Return**
**None
## **2.4 wait_a_click()   wait_b_click()**
### **Description**
Waiting for key A/B to be pressed
### **Syntax**
**GUI.wait_a_click()  GUI.wait_b_click()**
### **Parameters**
Key name, callback function name.
### **Return**
**None

## **Example Description**
In this simple example, our objective is to utilize the A and B buttons positioned on the side of UNIHIKER. We have defined three callback functions: one for "A key pressed", another for "B key pressed", and the third for "space pressed". Upon pressing any of these buttons, the interface will detect the signal via the on_key_click() function. Simultaneously, the Mind+ output window will display information corresponding to the pressed button.
## **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  

## **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class. Define a callback function to display information that appears after pressing the button. Then, use the object to call the on_key_click() function to handle button press events and bind the callback function to display the information on Mind+.
Note: The UNIHIKER has three buttons on its side: A and B buttons on the right and a HOME button on the left. Therefore, the UNIHIKER supports the key functions for A and B buttons only. If using a different development model, please adjust the code accordingly.  

```python
from unihiker import GUI   # Import the package
gui = GUI()  # Instantiate the GUI class

bt = "null"

# Callback function called when button A is clicked
def on_a_click():
    global bt
    bt = "a"
    print(bt)

# Callback function called when button B is clicked
def on_b_click():
    global bt
    bt = "b"
    print(bt)

# Callback function called when the space key is pressed
def on_space_click():
    global bt
    bt = "space"
    print(bt)

# Register the callback functions for button clicks
gui.on_a_click(on_a_click)
gui.on_b_click(on_b_click)

# Register a callback function for the 'c' key press event using a lambda function
gui.on_key_click('c', lambda: print("C key pressed"))

# Register the on_space_click function for the space key press event
gui.on_key_click('<space>', on_space_click)

import time
while True:
    if bt == "a":
        print("A button pressed")
        bt = "null"
    elif bt == "b":
        print("B button pressed")
        bt = "null"
    elif bt == "space":
        print("Space key pressed")
        bt = "null"
    # Add a delay to prevent the program from exiting and to observe the effects
    time.sleep(1)

```  

**Program Effect:**
![1720580145813[00h00m00s-00h00m04s].gif](img/2.on_key_click()/1720581028222-2dd2a532-5044-4477-8d9b-290f63b0b113.gif)  

---  


