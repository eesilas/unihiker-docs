| **Q** | **How to connect a Bluetooth speaker to UNIHIKER?** |
| --- | --- |
| A | Use `bluetoothctl` command control.|

## How does Unihiker connect to a Bluetooth speaker?


- Connect Unihiker to the computer, wait for 1 minute, and use any terminal tool on the computer to connect, IP: 10.1.2.3, password: dfrobot

```bash
ssh root@10.1.2.3
password:dfrobot

```
![](https://dfimg.dfrobot.com/5cb889ae418c7c557ee06762/wiki/5a2dcac1a4b20d09c133d18257ef472a.png)

- Run the following commands in order to turn on Bluetooth:

```bash
bluetoothctl
default-agent
power on

```
![](https://dfimg.dfrobot.com/5cb889ae418c7c557ee06762/wiki/b75bae42889c328d99c88e6bc2eb5f14.png)


- Use the following command to scan for nearby Bluetooth devices. Make sure to put your Bluetooth speaker into pairing mode before scanning:

```bash
scan on
```

![](https://dfimg.dfrobot.com/5cb889ae418c7c557ee06762/wiki/d6d48059b81c8b2c896380a8b62bd56c.png)

- Find the Bluetooth speaker's MAC address

Find the Bluetooth speaker from the scan results and copy its MAC address.

If there are many Bluetooth devices around, you can stop the scan after 1 minute using the ```scan off``` command, then use the ```devices``` command to list all scanned devices, or you can try to use the Bluetooth assistant to scan and get the device ID.

- Pair the Bluetooth speaker. After successful pairing, type ```exit``` to exit the Bluetooth control command:

```bash
trust xx:xx:xx:xx:xx:xx (Device ID)

pair xx:xx:xx:xx:xx:xx  (Device ID)

connect xx:xx:xx:xx:xx:xx (Device ID)
```

![](https://dfimg.dfrobot.com/5cb889ae418c7c557ee06762/wiki/9ee290843a6ba7c71ff46f874b0c8791.png)



- After the connection is complete, the audio files played by Unihiker will be output through the Bluetooth speaker.

```bash
play "1KHZ_SINE_WAVE 30min.MP3"
```

![](https://dfimg.dfrobot.com/5cb889ae418c7c557ee06762/wiki/5db106af2829ecb7173bef7ea85d55e0.png)


- Python Playback Example
```
#  -*- coding: UTF-8 -*-
from unihiker import Audio
import time
audio = Audio() 

print("Preparing to record for 6 seconds")
time.sleep(2)
print("Starting recording...")
audio.record('6s.wav', 3) 
print("Recording completed")
time.sleep(2)
print("Playing the 6-second audio")
audio.play('6s.wav')
print("Playback completed")
```