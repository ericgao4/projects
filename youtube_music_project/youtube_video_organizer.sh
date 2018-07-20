 # $1 is the url of the song/playlist/videos
 # $2 is the file path of the new music library
 # $3 is the name of the new music library
 cd $2
 mkdir $3
 cd $3
 youtube-dl $1


