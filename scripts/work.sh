#!/bin/bash

while [ "$#" -gt 0 ]; do
    curr=$1
    shift

    case "$curr" in
    "-mc")
        tmux new -s mycookbook -d
        tmux neww -t mycookbook: -n watch -d 'cd ~/work/mycookbook.git/master && npm run watch'
        tmux neww -t mycookbook: -n server -d 'cd ~/work/mycookbook.git/master && npm run server'
<<<<<<< HEAD
        #tmux neww -t mycookbook: -n frontend -d 'cd ~/work/mycookbook/frontend && npm start'
=======
        tmux neww -t mycookbook: -n frontend -d 'cd ~/work/mycookbook.git/master/frontend && yarn start'
>>>>>>> e2962904fd925c1d24a2833aef983957049b4776
        ;;
    *) echo "Unavailable command... $curr"
    esac
done
