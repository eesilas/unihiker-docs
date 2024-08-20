## **4.1.Bluetooth Communication Case Using Python Language bluetooth Library**
### **Description**
Bluetooth is a wireless technology that supports short-range communication (usually within 10 meters) between devices, enabling wireless information exchange between numerous devices including mobile phones, PDAs, wireless headphones, laptops, and related peripherals. By utilizing Bluetooth technology, communication between mobile communication terminal devices can be effectively simplified, making data transmission faster and more efficient, thus expanding the path for wireless communication.
Its essence is to establish a universal Radio Air Interface for communication environments between fixed or mobile devices, further combining communication technology with computer technology, enabling various 3C devices to communicate or operate with each other at close range without wires or cables. Simply put, Bluetooth technology is a technology that uses low-power radio to transmit data between various 3C devices.
### **Common functions**
#### **1.**Object=bluetooth.BluetoothSocket(bluetooth.RFCOMM)****
##### **Description**
Define the initialization function for the intelligent terminal bluetooth interface.
##### **Syntax**
**Object=bluetooth.BluetoothSocket(bluetooth.RFCOMM)**
##### **Parameters**
**bluetooth.RFCOMM**: Bluetooth Serial Port Linear Simulation Protocol.
##### **Return**
**None
#### **2.**Object.connect(("address", value))****
##### **Description**
Bluetooth connection function.
##### **Syntax**
**Object.connect(("address", value))**
##### **Parameters**
**address: **Server address.
**value: **Connection success flag value.
##### **Return**
Connection success flag value.
#### **3.**Object.send("data")****
##### **Description**
Send data.
##### **Syntax**
**Object.send("data")**
##### **Parameters**
**data: **The data that the user wants the smart terminal to send.
##### **Return**
**None
#### **4.**port = 1, Object.bind(("", port))****
##### **Description**
Define the port number and bind the address and port used for communication to the socket.
##### **Syntax**
**Object.bind(("", port))**
##### **Parameters**
**port: **The number of port.
##### **Return**
**None
#### **5.**Object.listen(value)****
##### **Description**
Define the port number and bind the address and port used for communication to the socket.
##### **Syntax**
**Object.listen(value)**
##### **Parameters**
**value: **The number of queued sockets.
##### **Return**
**None
#### **6.**data = Object.recv(1024)****
##### **Description**
Receive data sent by intelligent terminal.
##### **Syntax**
**data = Object.recv(1024)**
##### **Parameters**
**data: **Receive data sent by smart terminals.
**1024: **The length of the buffer zone.
##### **Return**
Data
#### **7.**client_sock.close(), server_sock.close()****
##### **Description**
Close the Bluetooth terminals.
##### **Syntax**
**client_sock.close()**
**server_sock.close()**
##### **Parameters**
**None
##### **Return**
**None
### **Example Description**
In the following code, we designed two terminals, an intelligent terminal and a server, on two UNIHIKERs. The smart terminal sends data to the server, and after receiving the data from the smart terminal, the buzzer receives a command from the controller to play music.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html) × 2
### **Example Code**
The first paragraph is the server program, which receives data from the smart terminal and controls the buzzer to play music after running.
```python
#  -*- coding: UTF-8 -*-

# MindPlus
# Python
import sys
sys.path.append("/root/mindplus/.lib/thirdExtension/liliang-bluetoothsocket-thirdex")
import time
from pinpong.board import Board,Pin
from pinpong.extension.unihiker import *
import bluetooth
import threading
import time
import os

bt_recv_data=''

def getData():  # Obtain intelligent terminal data
    global bt_recv_data
    data = bt_recv_data
    bt_recv_data=''
    return data

def server_loop():  # Terminal detection loop to check if it is connected to the smart terminal
    global bt_recv_data
    os.system("sudo hciconfig hci0 piscan")
    os.system("cat /opt/bdaddr")

    server_sock=bluetooth.BluetoothSocket( bluetooth.RFCOMM )  # Server interface functions
    port = 1
    server_sock.bind(("", port))  # port
    server_sock.listen(1)  # The number of queued sockets
    while True:
        client_sock,address = server_sock.accept()  # Obtain the address of the smart terminal
        print ("Accepted connection from ",address)
        while True:
            try:
                data = client_sock.recv(1024)  # Obtained intelligent terminal data
                #print ("received [%s]" % data)
                bt_recv_data = data.decode()  # Decoding data
                #print(bt_recv_data)
            except Exception as e:
                print(e)
                break

        client_sock.close()  # Close the interface
    server_sock.close()  # Close the interface

Board().begin()
threading.Thread(target=server_loop).start()  # Open thread

while True:
    if (len(bt_recv_data)>0):  # Determine whether data from the smart terminal has been received
        ShuJu = getData()
        print(ShuJu)
        if (ShuJu == 'BUZZER!'):  # If the data is set by the smart terminal
            buzzer.play(buzzer.DADADADUM,buzzer.Once)  # Buzzer beeps
    time.sleep(1)
```
**Program Effect:**
![](img/4_Bluetooth/1723188628055-ef6ac8da-8cd3-4dd7-880d-3c2a3480d708.png)

The second paragraph is the intelligent terminal program, which sends data to the server after running.
```python
#  -*- coding: UTF-8 -*-

# MindPlus
# Python
import sys
sys.path.append("/root/mindplus/.lib/thirdExtension/liliang-bluetoothsocket-thirdex")
import bluetooth


print("00:e0:4c:95:a6:dc,connecting...")  # Print the address of the smart terminal
client_sock=bluetooth.BluetoothSocket(bluetooth.RFCOMM )  # Bluetooth interface of smart terminal
client_sock.connect(("00:e0:4c:95:a6:dc", 1))  # Function for determining Bluetooth connection
print("00:e0:4c:95:a6:dc,connected!")  # Print connection successful

client_sock.send("BUZZER!")  # Sending data to the server

while True:
    pass
```
**Program Effect:**
![](img/4_Bluetooth/1723188747680-bbe4f8ca-f3b8-4a68-a6d0-3a17ed9cb5bf.png)

After the smart terminal is connected, the buzzer on the server will sound and display the successful connection and data on the terminal.
![image.png](img/4_Bluetooth/1723189081392-9a7c7a41-f974-4238-91a5-38b99379d588.png)
![image.png](img/4_Bluetooth/1723173078984-7c5a6a10-c5a1-49fb-88a8-1a9fef887dce.png)

## **4.2.A case study of Bluetooth communication using the bluepy.btle library in Python**
### **Description**
In addition to the Bluetooth library, we can also use the Bluepy.btle library for Bluetooth communication. In this case, we will take the DFRobot's BLE-Link Dongle as an example to illustrate how to use UNIHIKER to communicate with BLE devices.
The BLE-Link Dongle is a device that can convert BLE messages into USB serial port messages, making it ideal for BLE communication testing. First, we plug the BLE-Link Dongle into the computer's USB port, and then use the serial assistant software to follow the BLE-Link user manual to configure it as a slave mode.
Tips: How to initialize the BLE module? For more information, please refer to: [https://wiki.dfrobot.com/USBBLE-LINK_Bluno_Wireless_Programming_Adapter_SKU__TEL0087](https://wiki.dfrobot.com/USBBLE-LINK_Bluno_Wireless_Programming_Adapter_SKU__TEL0087)
### **Common functions**
#### **1.**DefaultDelegate.__init__(self)****
##### **Description**
Initialize Bluetooth device.
##### **Syntax**
**DefaultDelegate.__init__(self)**
##### **Parameters**
**self**: Default settings.
##### **Return**
**None
#### **2.**handleNotification(self, cHandle, data)****
##### **Description**
Process data identification function.
##### **Syntax**
**handleNotification(self, cHandle, data)**
##### **Parameters**
**self: **Default settings.
**cHandle: **Default settings.
**data: **The transmitted data.
##### **Return**
Data
#### **3.**Object = Peripheral(address, attribute)****
##### **Description**
Slave variable setting function.
##### **Syntax**
**Object = Peripheral(address, attribute)**
##### **Parameters**
**address: **The address of the BLE Bluetooth module.
**attribute: **Attributes can be set to public or private.
##### **Return**
**None
#### **4.**Object.setDelegate(default delegate)****
##### **Description**
Initialize the slave.
##### **Syntax**
**Object.setDelegate(default delegate)**
##### **Parameters**
**User defined slave class.**
##### **Return**
**None
#### **5.**service = Object.getServiceByUUID(UUID("ID"))****
##### **Description**
Obtain the communication service ID from the Bluetooth module.
##### **Syntax**
**service = Object.getServiceByUUID(UUID("ID"))**
##### **Parameters**
**ID: **Communication service ID.
##### **Return**
**None
#### **6.**char = Object.getCharacteristics(UUID("ID"))[0]****
##### **Description**
Bluetooth slave module obtains string service ID function.
##### **Syntax**
**char = Object.getCharacteristics(UUID("ID"))[0]**
##### **Parameters**
**ID: **Get string service ID.
##### **Return**
Data
#### **7.**Object.waitForNotifications(time)****
##### **Description**
Waiting for the data retrieval function.
##### **Syntax**
**Object.waitForNotifications(time)**
##### **Parameters**
**time: **The waiting time set by the user themselves.
##### **Return**
**None
### **Example Description**
The following code is suitable for communication scenarios where the slave Bluetooth module and UNIHIKER can be successfully connected. Firstly, UNIHIKER sends a "hello" signal to the slave module after running the program, waiting for the Bluetooth slave module to send a signal. At the same time, we use the serial monitoring assistant on Windows to send a signal to UNIHIKER, which can be seen on mind+.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html) 
- [Bluno Link - A USB Bluetooth 4.0 (BLE) Dongle](https://www.dfrobot.com/product-1220.html)

![image.png](img/4_Bluetooth/1723434804536-73dcc323-a36a-4ff4-b49c-be80f3511ec8.png)
![image.png](img/4_Bluetooth/1723443349861-2200d75e-bba5-405e-8394-729effb60104.png)
### **Example Code**
```python
import time
from bluepy.btle import Peripheral, UUID, DefaultDelegate

class MyDelegate(DefaultDelegate):
    def __init__(self):
        DefaultDelegate.__init__(self)
    def handleNotification(self, cHandle, data):
        print('Received data:', data)
p = Peripheral("20:91:48:CD:9F:BC", "public")

try:

    p.setDelegate(MyDelegate())

    svc = p.getServiceByUUID(UUID("0000dfb0-0000-1000-8000-00805f9b34fb"))

    char = svc.getCharacteristics(UUID("0000dfb1-0000-1000-8000-00805f9b34fb"))[0]

    while True:
        char.write(bytes("hello\n", 'utf-8'))
        time.sleep(0.2)
        if p.waitForNotifications(0.1):  # handleNotification() was called
            continue
        print("Waiting...")

finally:
    p.disconnect()
```
**Program Effect:**
![image.png](img/4_Bluetooth/1723444000728-ea18ea52-93b4-45fd-a947-574272d485fd.png)
![image.png](img/4_Bluetooth/1723444082445-76c4ba9a-dc74-4573-b9b2-40eccc7bdeb5.png)
