# $1 is the url of the song/playlist/videos
# $2 is the file path of the new music library
# $3 is the name of the new music library
cd $2
mkdir $3
cd $3
# Process will sleep for 10 seconds each song to prevent youtube from demanding a captcha
youtube-dl -x --audio-format "mp3" --write-thumbnail --embed-thumbnail --metadata-from-title "%(artist)s - %(title)s" --sleep-interval 10 $1
mkdir mp3_songs
mkdir mp3_thumbnails
find . -name '*.jpg' -exec mv {} mp3_thumbnails/{} \;
find . -name '*.mp3' -exec mv {} mp3_songs/{} \;

