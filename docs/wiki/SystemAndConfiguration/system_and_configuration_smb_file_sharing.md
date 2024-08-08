The UNIHIKER comes with samba service, allowing you to share files on the LAN and create your own private cloud drive. Using the Windows Network Neighborhood function, you can edit files just like managing Windows files.
## **How to Enable**
To enable the file-sharing function on the UNIHIKER, simply access the Home menu and select the file-sharing option.
## **PC Configuration**
Before using the UNIHIKER's webpage menu, please ensure that your PC can access it.

- Open **This PC** .

![](img/5.SMB File Sharing/1720596236238-ec55693e-f0f4-4bb4-8810-c14f7968b2bc.png)

- In the address bar, enter the UNIHIKER's network address in the format of \\ip address\. The IP address is 10.1.2.3 when you connect the board to PC via USB cable, then enter \\10.1.2.3\. The IP address here is 192.168.199.113, then enter \\192.168.199.113\. After pressing Enter key, you can see the shared files of the UNIHIKER (for the first connection, input the username and password root and dfrobot respectively, and if there is an error, select another account and enter again).

![](img/5.SMB File Sharing/1720593996841-98ecd307-4e07-463b-8ef4-6cc060f7158d.png)

- Another option is to use the keyboard shortcut Win+R to open the Run window, and enter the same network address to access the shared folder.
![](img/5.SMB File Sharing/1720593996858-ec9b2d4d-7106-4142-b430-b19234fbf07b.png)
- The "root" folder contains the onboard memory space, while the "media" folder contains the external hard drive space (any SD card inserted into the UNIHIKER or hard drive connected via USB will be automatically mounted under this folder).
![](img/5.SMB File Sharing/1720593996909-1df4b0b8-f0a2-4cd0-9c26-4ada70357ab8.png)
- To open a folder, simply double-click on it. If using the IP address \\10.1.2.3\, you can open it directly. However, if using another address, you may be prompted to enter a username and password. In that case, enter root and dfrobot to access the folder.


![](img/5.SMB File Sharing/1720593996808-ca678884-4f48-489a-8511-14038d240fb2.png)

- Once the folder is opened, you can copy and paste files as you normally would.
   - This method can be used to upload Python code to the board and then run it through the Home menu.

![](img/5.SMB File Sharing/1720593997051-ddc98472-54dd-460a-b448-bb64aee5c47a.png)
## FAQ

- Q : What should I do if an error message "You can't access this shared folder because your organization's security policies block unauthenticated guest access." appears when accessing on Windows?
![](img/5.SMB File Sharing/1720593997984-ce922393-5727-4cfc-bbd9-2599d3d5ab5e.png)
- A: Please enable insecure guest logons.


---  

