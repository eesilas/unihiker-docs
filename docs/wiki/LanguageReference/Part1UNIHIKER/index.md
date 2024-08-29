# Introduction to the unihiker Library
In order to facilitate the utilization of the UNIHIKER main controllers, we have developed a Python library called "unihiker" This library integrates functionalities that are either missing or inconvenient to use from third-party Python libraries required by UNIHIKER .

- In order to facilitate screen display and control, we have encapsulated a GUI class in the unihiker library, based on the tkinter library. 
- To facilitate the use of microphone and USB speakers, we have encapsulated an Audio class in the unihiker library.    

## Installing the unihiker Library
The unihiker library can be installed and updated using the pip tool.

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

## General Knowledge and Features

 [General Knowledge and Features](GeneralKnowledgeAndFeatures/index.md)

## Function Index

| Screen Display | Screen Rendering Graphics | Mouse And Keyboard |
| --- | --- | --- |
| [1.draw_text()](ScreenDisplay/reference_unihiker_draw_text.md) | [1.draw_line()](ScreenRenderingGraphics/reference_unihiker_draw_line.md) | [1.on_mouse_move()](MouseAndKeyboard/reference_unihiker_on_mouse_move.md) |
| [2.draw_digit()](ScreenDisplay/reference_unihiker_draw_digit.md) | [2.draw_rect()](ScreenRenderingGraphics/reference_unihiker_draw_rect.md) | [2.on_key_click()](MouseAndKeyboard/reference_unihiker_on_key_click.md) |
| [3.draw_image()](ScreenDisplay/reference_unihiker_draw_image.md) | [3.fill_rect()](ScreenRenderingGraphics/reference_unihiker_fill_rect.md) | |
| [4.draw_emoji()](ScreenDisplay/reference_unihiker_draw_emoji.md) | [4.draw_round_rect()](ScreenRenderingGraphics/reference_unihiker_draw_round_rect.md) | |
| [5.draw_clock()](ScreenDisplay/reference_unihiker_draw_clock.md) | [5.fill_round_rect()](ScreenRenderingGraphics/reference_unihiker_fill_round_rect.md) | |
| [6.fill_clock()](ScreenDisplay/reference_unihiker_fill_clock.md) | [6.draw_circle()](ScreenRenderingGraphics/reference_unihiker_draw_circle.md) | |
| [7.draw_qr_code()](ScreenDisplay/reference_unihiker_draw_qr_code.md) | [7.fill_circle()](ScreenRenderingGraphics/reference_unihiker_fill_circle.md) | |
| [8.add_button()](ScreenDisplay/reference_unihiker_add_button.md) | | |

| Multi Threading | Audio Class |
| --- | --- |
| [1.start_thread()](MultiThreading/reference_unihiker_start_thread.md) | [1.Recording Audio(record)](AudioClass/reference_unihiker_recording_audio_record.md) |
| [2.stop_thread()](MultiThreading/reference_unihiker_stop_thread.md) | [2.Audio Playback(play)](AudioClass/reference_unihiker_audio_playback_play.md) |
