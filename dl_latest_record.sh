
NAME=$1

[[ -z $NAME ]] && echo "ERROR: NAME is not given" && exit 1

FL=page.html

wget https://echo.msk.ru/programs/$NAME/ -O $FL

FL_MP3=$( grep -o "https://.*\.mp3" $FL | head -1 )

[[ -z $FL_MP3 ]] && echo "ERROR: cannot find links to mp3 files for channel '$NAME'" && exit 1

echo "INFO: downloading $FL_MP3"

wget $FL_MP3
