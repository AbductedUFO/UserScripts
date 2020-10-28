#!/bin/bash
# youtube-dl script
# AbductedUFO


singleVideo () {
	echo -ne "Enter URL: " 
	read url1
    youtube-dl --write-sub --write-thumbnail --embed-thumbnail --add-metadata $url1
}

playlistVideo () {
	echo -ne "Enter URL: " 
	read url1
	youtube-dl -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' $url1
}

audioOnly () {
	echo -ne "Enter URL: " 
	read url1
	youtube-dl -f bestaudio --extract-audio --embed-thumbnail --add-metadata $url1
}


# MAIN

echo -ne "
| |  Youtube-DL Script  | |
| | | | AbductedUFO | | | |

    Download Options:
     1. Single Video
     2. Video Playlist
     3. Audio Only

> "

read OPT
case $OPT in
1)
	singleVideo
	;;
2)
	paylistVideo
	;;
3)
	audioOnly
	;;
*)
	echo "Invalid Input"
	;;
esac





