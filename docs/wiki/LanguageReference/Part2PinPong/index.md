# Introduction to the PinPong Library
UNIHIKER is equipped with a microcontroller coprocessor, whose duty is to control the onboard components and GPIO interfaces. In order to achieve hardware control, we utilize the PinPong library in Python to communicate with the coprocessor and write Python code to control the hardware.

The PinPong library is a collection of Python code for controlling open-source hardware mainboards. allowing you to quickly and easily control open-source hardware using Python within just five minutes.

With the assistance of the PinPong library, you can directly program various common open-source hardware using Python code. The underlying principle involves flashing a specific firmware onto the open-source hardware, enabling it to communicate with the computer via a serial port and execute various commands.


## Installing the PinPong Library

The PinPong library can be installed and updated using the pip tool.

> Note: The PinPong library is already integrated into the factory firmware of UNIHIKER, so this step can be skipped. 

**Installation：**

```bash
pip install pinpong
```

**Update：**

```bash
pip install -U pinpong
```

## Importing the PinPong Library
- As the PinPong library supports various types of microcontroller boards and open-source hardware, it is divided into three packages: "board", "extension", and "libs". The "board" package comprises the commonly used libraries and functions supported by microcontroller boards, the "extension" package contains the customized libraries related to specific microcontroller boards, while the "libs" package includes expansion libraries for other sensors.
- As the PinPong library aims to support multiple microcontrollers, corresponding objects can be generated based on specified board types and port numbers when using the library. However, as the coprocessor and port numbers on the UNIHIKER are already fixed, object initialization can be performed directly when using the UNIHIKER , without the need to specify these parameters.

```python
from pinpong.board import xxx   # Importing the xxx library from the board package
from pinpong.libs.xxx    # Importing the xxx library from the libs package
from pinpong.extension.xxx    # Importing the xxx module from the extension package

Board().begin()    # Initializing the Board: connecting the coprocessor and checking firmware. If the firmware is empty or the version is incorrect, automatic burning will be performed.

```

> **Note: Please replace `xxx` with the actual names of the libraries or modules you are using.**


## Function Index

| Function Onboard | Digital IO & Analog IO | Communication |
| --- | --- | --- |
| [1.L LED](FunctionOnboard/1_L_LED_.md) | [1.Digital Output(GPIO)](DigitalIOAndAnlogIO/1_Digital_Output_GPIO_.md) | [1.Serial Port(UART)](Communication/1_Serial_Port_UART_.md) |
| [2.Button A and Button B](FunctionOnboard/2_Button_A_and_Button_B.md) | [2.Digital Input(GPIO)](DigitalIOAndAnlogIO/2_Digital_Input_GPIO_.md) | [2.I2C(Inter Integrated Circuit)](Communication/2_I2C_Inter_Integrated_Circuit_.md) |
| [3.Light Sensor](FunctionOnboard/3_Light_Sensor.md) | [3.Analog Input(ADC)](DigitalIOAndAnlogIO/3_Analog_Input_ADC_.md) | [3.SPI(Serial Peripheral Interface)](Communication/3_SPI_Serial_Peripheral_Interface_.md) |
| [4.Accelerometer and Gyroscope](FunctionOnboard/4_Accelerometer_and_Gyroscope.md) | [4.Analog Output(PWM)](DigitalIOAndAnlogIO/4_Analog_Output_PWM_.md) | [4.Bluetooth](Communication/4_Bluetooth.md) |
| [5.Buzzer](FunctionOnboard/5_Buzzer.md) | | |

| Popular Modules |
| --- |
| [1.Servo](PopularModules/3_Servo.md) |
| [2.LED Strip](PopularModules/4_LED_Strip.md) |
| [3.DHT11 Temperature&Humidity Sensor](PopularModules/1_DHT11_Temperature_Humidity_Sensor.md) |
| [4.Ultrasonic sensor](PopularModules/2_Ultrasonic_sensor.md) |
| [5.OLED 2864 Display Screen](PopularModules/5_OLED_2864_Display_Screen.md) |
| [6.Color recognition](PopularModules/6_Color_recognition.md) |
