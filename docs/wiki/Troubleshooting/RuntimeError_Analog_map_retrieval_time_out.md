

|Q: | What should I do when the error message "RuntimeError: Analog map retrieval time out" appears or the readings from onboard components are all 0.?   |
|---|---|
|A: |It means that PinPong firmware initialization failed.<br>Situation 1: It may be that multiple programs are running at the same time. For example, a program is started in the home menu of the board, and another program is run in Mind+. Both programs use the pinpong library.<br>Solution: first try to press and hold the Home button for 5 seconds and release it, which will close all currently running python programs, and restart the board if an error is still reported.<br>Case 2: You can try to re-initialize the mcu firmware,run this code: |

```python
from pinpong.board import Board
Board().begin(1)
```