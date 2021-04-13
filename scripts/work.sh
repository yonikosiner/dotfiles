#!/bin/bash


while [ "$#" -gt 0 ]; do
    curr=$1
    shift

    case "$curr" in
    "-mc")
        tmux new -s mycookbook -d
        tmux neww -t mycookbook: -n watch -d 'cd ~/work/mycookbook && npm run watch'
        tmux neww -t mycookbook: -n server -d 'cd ~/work/mycookbook && npm run server'
        tmux neww -t mycookbook: -n frontend -d 'cd ~/work/mycookbook/frontend && npm start'
        ;;
    "-yk")
        tmux new -t yonikosiner-com -d
        ;;
    *) echo "Unavailable command... $curr"
    esac
done
