To make navigation easier, the UNIHIKER has a HOME menu that can be accessed by long-pressing the Home button or long-pressing the TouchScreen. Use button A and B to move the cursor up and down, and press the Home button to confirm your selection.
![image.png](img/2.Home Menu/1720592291387-0b22b362-3631-4887-ad8a-f9b4368e1194.png){style="display:block;margin: 0 auto"}  
  
The Home menu on the UNIHIKER allows for convenient access to commonly used features for controlling the board, including:

- Switching between running programs
- Service Toggle
- Viewing network information
- Enabling/disabling hotspot mode
- Calibrate Touch Screen
- Change Language

![image.png](img/2.Home Menu/1720592419211-33808672-07e1-4338-a7cb-767a71d6c088.png)![image.png](img/2.Home Menu/1720592441085-87305a2c-b59e-4f27-bebc-6fd12849a0cc.png) 
  
## 1-Run Programs
This option displays all Python programs located in the system file directory. Selecting a program and pressing the Home button will start running it. To exit a running program, simply press and hold the Home button.
![](img/2.Home Menu/1720592464305-78334f88-4ce1-4773-bfb2-958b8ad73b27.png)
## 2-Service Toggle
This menu provides access to the built-in applications and their respective controls:

- Jupyter: The Jupyter Python editor service can be turned on or off using this menu. By default, it is turned off.
- SIoT: The SIoT IoT server can be turned on or off using this menu. By default, it is turned on.
- File sharing: Samba file sharing can be turned on or off using this menu. By default, it is turned on.
- Screen sharing: VNC screen sharing can be turned on or off using this menu. By default, it is turned on.
- Auto boot: This menu also allows for the automatic running of the last program that was used before shutdown. By default, this function is turned off.

Note: If the program set to automatically start on boot is deleted, an error message such as "python3: cannot open xxxx.py" or "python3: can't open file '/root/xxx':[Errno 2] No such file or directory" will be displayed upon boot. To resolve this issue, simply run any other program from the Run Programs menu or turn off the autostart feature.  
![image.png](img/2.Home Menu/1720592553182-22a28c7f-35e8-48ca-b7e3-3f8c72012c16.png){style="display:block;margin: 0 auto"}

## 3-Network Info
This menu option allows users to check the network IP address:

- USB Ethernet: When connected to a computer via USB, the board's IP address will be displayed and fixed at 10.1.2.3.
- Wireless Connection: When connected to other WiFi hotspots, the board's IP address assigned by the router will be displayed.
- Wireless Hotspot: When the UNIHIKER is in wireless hotspot mode, the board's IP address will be displayed and fixed at 192.168.123.1.
- Other Devices: When connected to other network devices, such as a network card, the board's IP address assigned by the router will be displayed.

![image.png](img/2.Home Menu/1720592626079-6aa8efc0-8706-47c0-a656-b420fbdacf65.png){style="display:block;margin: 0 auto"}

## 4-Hotspot
![](img/2.Home Menu/1720592675972-f228eebd-696d-4d41-9735-6240853a9ab1.png){style="display:block;margin: 0 auto"}  
This menu option allows for the turning on or off of the wireless hotspot on the UNIHIKER board. When turned on, the SSID and password will be displayed on the screen, and other devices can search for and connect to this hotspot.
**Note**: Please keep in mind that the UNIHIKER is not connected to the Internet, so it can only be used for local area network (LAN) purposes. This means that when other devices connect to its hotspot, they will lose Internet connectivity, and the only accessible IP address will be 192.168.123.1.
![](img/2.Home Menu/1720592691208-d9bd59e9-5c76-490a-80f2-184622e24f9d.jpeg)

## 5-System Info
System-related information can be found in this menu.

- System Version: The current system version will be displayed in this menu.
- CPU Usage: The current CPU usage will be displayed in this menu.
- Memory Usage: The current memory usage will be displayed in this menu.
- Disk Usage: The current disk usage will be displayed in this menu.

![image.png](img/2.Home Menu/1720592787007-b683ce44-720f-47b1-900e-aa146686714d.png){style="display:block;margin: 0 auto"}

## 6-Calibrate Touch Screen
If you experience inaccurate touch response on the UNIHIKER screen, you can recalibrate it. Simply click on "Calibrate Touch Screen" and the screen will display five calibration points one by one. Use your fingernail to tap each of the five points in sequence, and the system will restart once the calibration is complete.  
  
![image.png](img/2.Home Menu/1720593295304-30fc6da4-9c4f-4143-a78f-9682dafd97cf.png){width=250}![image.png](img/2.Home Menu/1720593368534-3be7c218-249a-4cc6-b912-b5196528d3a0.png){width=250}![](img/2.Home Menu/1720593376334-36d176b6-a6ed-4ca8-b27f-fc7ffc8d5c9d.gif){width=250}

## 7- Language
This interface displays the available system languages that can be switched. Once confirmed with the Home button, the UNIHIKER will restart and the language switch will take effect. Please note that the language switch option will always appear as the last item on the Home menu. If you accidentally switch to another language, simply access the Home menu and select the last item to open this interface.
Currently, there are two language options available - Chinese and English. If you would like to translate into another language, you can add a .json file for that language in the /opt/unihiker/pyboardUI/locale/ directory. For example, if you want to add French (fr.json), place the file here and modify the value corresponding to the key in the json file (do not modify the key itself). This menu will automatically read the language files within the folder and display them in this list for you to choose from.  
![image.png](img/2.Home Menu/1720593449891-8f189ac0-4dde-4615-899f-aafc8b2948eb.png){style="display:block;margin: 0 auto"}  

## 8- Enable/disable the HOME menu
The HOME menu runs as a service and can be stopped using this menu.
Note: Please only use this option if necessary.
```bash
systemctl --user start PyboardUI  #enable 
systemctl --user stop PyboardUI  #disable 
systemctl --user restart PyboardUI  #restart
```
