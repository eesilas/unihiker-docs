#!/bin/bash
cd ~/unihiker-docs/
echo "Script started: $(date)" >> ~/check.log
# Check for changes on the remote repository
if git fetch origin && [ `git rev-list HEAD...origin/main --count` != 0 ] ; then
    echo "+++++++" >> ~/check.log
    # If changes exist, pull the changes
    git pull  >> ~/check.log
    echo "Script build: $(date)" >> ~/check.log
    # Build the project using mkdocs
    /usr/local/bin/mkdocs build  >> ~/check.log 2>&1
    echo "Script build end: $(date)" >> ~/check.log
    # Restart the nginx service
    sudo systemctl restart nginx  >> ~/check.log 2>&1
    echo "restart end: $(date)" >> ~/check.log
fi
echo "----------" >> ~/check.log
