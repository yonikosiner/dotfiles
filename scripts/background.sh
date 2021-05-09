# directory=cd ~/Desktop/anime && fzf
#!/usr/bin/env bash

directory="/Users/yonikosiner/Desktop/anime"
result=$(rg --files $directory | fzf)
echo $result

#osascript -e 'tell application "Finder" to set desktop picture to POSIX file "${result}"'
