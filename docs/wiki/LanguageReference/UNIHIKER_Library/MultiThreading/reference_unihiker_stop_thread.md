### **Description**
Stop the thread running on UNIHIKER
### **Syntax**
**GUI.stop_thread(Thread object)**
### **Parameters**
** Thread object
### **Return**
**None
### **Example Description**
In this simple example, our main goal is to stop the thread running on UNIHIKER.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)  

### **Example Code**
Instantiate an object of the GUI class within the UNIHIKER class. Define two callback functions for display purposes. The first callback function initiates a clock thread using the start_thread() function and maintains its operation through a delay loop. After 6 seconds, the thread is closed using the stop_thread() function.
Note:  Thread functions do not loop by default.  

```python
import time
from unihiker import GUI  # Import Package
gui=GUI()  # Instantiating GUI classes

clock = gui.draw_clock(x=120, y=160, r=100, h=3, m=4, s=5, color=(255, 0, 0), onclick=lambda: print("clock clicked"))
def clock_update():
    while True:
        t = time.localtime()
        clock.config(h=time.strftime("%H", t), m=time.strftime("%M", t), s=time.strftime("%S", t))
        time.sleep(0.5)
	    
# Multithreaded startup
clock_thread = gui.start_thread(clock_update)
time.sleep(6)
# Stop Thread
gui.stop_thread(clock_thread)

while True:
    time.sleep(0.1)
```  

**Program Effect:**
![stop_thread.gif](img/2.stop_thread()/1720670083979-641f45bb-5385-4ec3-b8a6-5e70be804a70.gif){width=300, style="display:block;margin: 0 auto"}  

---  


