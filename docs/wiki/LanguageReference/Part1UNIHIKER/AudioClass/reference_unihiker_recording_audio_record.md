## **1.1 sound_level()**
| **Syntax**          | **Audio.sound_level()**    |   
| :--------------     | :--------------------      |
| **Description**     | Getting ambient volume   |  
| **Parameters**      | **None |  
| **Return**          | Sound level  |  




## **1.2 record()**
| **Syntax**          | **Audio.record(file,duration)**    |   
| :--------------     | :--------------------      |
| **Description**     | Recording sound with the microphone on UNIHIKER   |  
| **Parameters**      | **file:** The name of the file where the recording was saved. |  
|                     | **duration:** The length of the recording, in seconds. |
| **Return**          | **None  |  



## **1.3 start_record()**
| **Syntax**          | **Audio.start_record(file)**    |   
| :--------------     | :--------------------      |
| **Description**     | Start sound recording   |  
| **Parameters**      | **file:** The name of the file where the recording was saved. |  
| **Return**          | Remaining duration in seconds  |  




## **1.4 stop_record()**
| **Syntax**          | **Audio.stop_record()**   |   
| :--------------     | :--------------------      |
| **Description**     | Stop sound recording   |  
| **Parameters**      | **None |  
| **Return**          | **None  |  





### **Example Description**
In this simple example, our main goal is to use the functions in the previous text to measure the volume of sound, record the sound, start and end the recording.
### **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)
### **Example Code**
First, instantiate an object of the Audio class within the UNIHIKER class. Then, use this object to call the `audio = Audio()` function to initialize the pins for recording audio. Once initialized, proceed to collect ambient sound volume 30 times within a loop. Following this, utilize the `audio.record()` function to capture a three-second audio clip. Finally, manage the recording process using the `audio.start_record()` and `audio.stop_record()` functions.  
```python
from unihiker import Audio
import time

audio = Audio()  # Instantiating audio

print("Ambient sound size")
for i in range(30):
    print(audio.sound_level())
    time.sleep(0.1)
	
	
print("Record for 3 seconds")
audio.record('3s.wav', 3)  # Record for 3 seconds and save to file 3s.wav

print("start recording")
audio.start_record('6s.wav')  # Start recording in the background and save it to file 6s.wav
print("Wait for 6 seconds")
time.sleep(6)  # Wait for 6 seconds
audio.stop_record() # stop recording
print("stop recording")
```
**Program Effect:**
![1720663424594[00h00m00s-00h00m16s].gif](img/1.Recording Audio(record)/1720663610490-30b737a3-73b0-4070-942e-82c68f69ae31.gif)
The audio files are stored in the folder shown in the following figure.
![](img/1.Recording Audio(record)/1720663663679-bd2e948b-9d13-4896-914f-1e22d58d475b.png){width=300, style="display:block;margin: 0 auto"}  

---  


