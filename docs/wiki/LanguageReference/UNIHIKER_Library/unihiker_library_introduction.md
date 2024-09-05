# UNIHIKER Library - Introduction
In order to facilitate the utilization of the UNIHIKER main controllers, we have developed a Python library called "unihiker". This library integrates functionalities that are either missing or inconvenient to use from third-party Python libraries required by UNIHIKER .

- In order to facilitate screen display and control, we have encapsulated a GUI class in the UNIHIKER library, based on the "Tkinter" library. 
- To facilitate the use of microphone and USB speakers, we have encapsulated an Audio class in the UNIHIKER library.    

## Install the UNIHIKER Library
The UNIHIKER library can be installed and updated using the pip tool.

> The UNIHIKER has this library installed by default.

**Installation：**

```bash
pip install unihiker
```

**Update：**

```bash
pip install -U unihiker
```


## Importing the GUI Class

To import the GUI class, use the following statement:

```python
from unihiker import GUI   # Import the package
gui = GUI()                # Instantiate the GUI class
```


---  

