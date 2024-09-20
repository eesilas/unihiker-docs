### **Description**
Implementing thread activation
### **Syntax**
**GUI.start_thread(Thread function name)**
### **Parameters**
Name of the callback function
### **Return**
** Thread object.
### **Example Description**
In this simple example, our main goal is to implement thread startup through UNIHIKER.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  

### **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class. Define two callback functions for display purposes. The first callback function initiates a clock thread using the start_thread() function and maintains its operation through a delay loop. The second callback function visually indicates the thread's activation and deactivation by printing characters.  
Note:  Thread functions do not loop by default.  

```python
import time
from unihiker import GUI  # Import Package
gui=GUI()  # Instantiating GUI classes

clock = gui.draw_clock(x=120, y=160, r=100, h=3, m=4, s=5, color=(255, 0, 0), onclick=lambda: print("clock clicked"))
def clock_update():
    print("Thread 1 starts")
    while True:  # loop execution
        t = time.localtime()
        clock.config(h=time.strftime("%H", t), m=time.strftime("%M", t), s=time.strftime("%S", t))
        time.sleep(0.5)  # Adding a sleep in a thread loop can prevent the program from getting stuck or slowing down
    print("Thread 1 stopped")

def print_test():
    print("Thread 2 starts")
    time.sleep(1)
    print("Thread 2")
    time.sleep(1)
    print("Thread 2 ends")

# Thread 1 starts
clock_thread = gui.start_thread(clock_update)
# Thread 2 starts
gui.start_thread(print_test)

while True:
    time.sleep(0.1)
```  

**Program Effect:**
![](img/1.start_thread()/1720581463678-298d8c56-a911-43ce-8efa-6c0882aec778.gif)  

---  


