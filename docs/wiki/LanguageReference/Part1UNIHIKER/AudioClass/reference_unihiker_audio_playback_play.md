## **2.1 play()**
### **Description**
Playing music with the external USB speaker on UNIHIKER
### **Syntax**
**Audio.play(file)**
### **Parameters**
**file**: File name to be played. It can be in different audio formats such as WAV, MP3, etc.
### **Return**
**None
## **2.2 **start_**play()**
### **Description**
Begin to play the music with external USB speaker on UNIHIKER
### **Syntax**
**Audio.start_play(file)**
### **Parameters**
**file**: File name to be played. It can be in different audio formats such as WAV, MP3, etc.
### **Returns**
**None
## **2.3 **pause_**play()**
### **Description**
Pause the music when it is playing with the external USB speaker on UNIHIKER
### **Syntax**
**Audio.pause_play()**
### **Parameters**
**None
### **Returns**
**None
## **2.4 **resume_**play()**
### **Description**
Resume the paused music
### **Syntax**
**Audio.resume_play()**
### **Parameters**
**None
### **Returns**
**None
## **2.5 **stop_**play()**
### **Description**
Stop the playing music
### **Syntax**
**Audio.stop_play()**
### **Parameters**
**None
### **Returns**
**None
## **2.6 **play_time_remain**()**
### **Description**
Obtain the remaining duration of the music
### **Syntax**
**Audio.play_time_remain()**
### **Parameters**
**None
### **Returns**
**Remaining duration in seconds
## **Example Description**
In this simple example, we'll start by playing a 7-second music track through the external USB speaker on UNIHIKER. Once the playback finishes, we'll automatically start playing an 8-second music track and then retrieve the remaining playback time twice. Following this, the music playback will pause automatically, resume after a few seconds, and finally stop playing altogether.
## **Hardware Required**

- [UNIHIKER](https://www.dfrobot.com/product-2691.html)
- USB speaker  

## **Example Code**
First, instantiate an object of the Audio class within the UNIHIKER class. Then, use this object to call the `play()` function to play a 7-second piece of music. Once the playback is completed, call the `start_play()` function through the same object to play an 8-second piece of music. Next, use the `play_time_remain()` function to obtain the remaining duration of the music playback. After retrieving the remaining time, call `pause_play()` to pause the music, `resume_play()` to resume playing, and finally `stop_play()` to end the music playback.  
  
> Note1:The file should be located within the same directory as this code.  
![image.png](img/2.Audio Playback(play)/1720605374181-ab1a9484-6d4e-4176-b876-a6b399ff0311.png){width=400, style="display:block;margin: 0 auto"}  
  
> Note2:Ensure that the USB speaker is connected to the USB port of the UNIHIKER to facilitate audio output.  
  
```python
from unihiker import Audio  # Import the Audio module from the unihiker package
import time

audio = Audio()  # Instantiate the Audio class

print("Playing 7s Audio")
audio.play('7s.wav')  # Play the audio file '3s.wav'
print("Playback Completed")

print("Start Playing 8s Audio")
audio.start_play('8s.wav')  # Start playing the audio file '6s.mp3' in the background

for i in range(2):
    remain_time = audio.play_time_remain()  # Get the remaining time of the audio playback
    print("Remaining Time: " + str(remain_time))
    time.sleep(1)  # Pause for 1 second

print("Pause Playback")
audio.pause_play()  # Pause the audio playback
for i in range(2):
    remain_time = audio.play_time_remain()
    print("Remaining Time: " + str(remain_time))
    time.sleep(1)

print("Resume Playback")
audio.resume_play()  # Resume the paused audio playback
for i in range(2):
    remain_time = audio.play_time_remain()
    print("Remaining Time: " + str(remain_time))
    time.sleep(1)

print("Stop Playback")
audio.stop_play()  # Stop the audio playback
print("Playback Ended")
```
**Program Effect:**
The speaker commences playing music in accordance with the established settings, concurrently presenting the pertinent status on the terminal.
![image.png](img/2.Audio Playback(play)/1720665139722-d7a2cc00-d157-4805-b689-4b9a5ba612b1.png)  

---  


