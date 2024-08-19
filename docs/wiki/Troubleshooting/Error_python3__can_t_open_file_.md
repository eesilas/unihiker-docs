| **Q** | **The UNIHIKER automatically runs a program after being powered on for 5s or reports a "can't open file" error?** |
| --- | --- |
| A | There is an **Auto boot** function in the **Service Toggle**. If it is enabled, then UNIHIKER will automatically run the program that was run last time when powered on. If the program set to automatically start on boot is deleted, an error such as `python3: cannot open xxxx.py`
 or `python3: can't open file '/root/xxx':[Errno 2] No such file or directory`
 will be reported at startup. At this time, simply run any program in the **Run Programs**, or disable the **Auto boot** function. |

