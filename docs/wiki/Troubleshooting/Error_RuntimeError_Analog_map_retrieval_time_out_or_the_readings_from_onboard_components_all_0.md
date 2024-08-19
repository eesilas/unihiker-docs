| **Q** | **What should I do when the error message "RuntimeError: Analog map retrieval time out" appears or the readings from onboard components are all 0.?

![](img/Error_RuntimeError_Analog_map_retrieval_time_out_or_the_readings_from_onboard_components_all_0/1721641439650-21dc4723-533a-4cdf-ab3e-0da87b10b77e.png)
or
![](img/Error_RuntimeError_Analog_map_retrieval_time_out_or_the_readings_from_onboard_components_all_0/1721641439305-c7b7d0ca-9e1f-4dbc-a2fc-50846d3183e8.png)
 |
| --- | --- |
| A | It means that PinPong firmware initialization failed.
Situation 1: It may be that multiple programs are running at the same time. For example, a program is started in the home menu of the board, and another program is run in Mind+. Both programs use the pinpong library.
Solution: first try to press and hold the Home button for 5 seconds and release it, which will close all currently running python programs, and restart the board if an error is still reported.
Case 2: You can try to re-initialize the mcu firmware,run this code:
`from pinpong.board import Board`
`Board().begin(1)` |

| **Q** | **The error message "IndentationError: unexpected indent" is reported during running a program.** |
| --- | --- |
| A | This error indicates that there is an indentation error. Check the code before and after the error line to see if there are any extra or missing spaces. |

