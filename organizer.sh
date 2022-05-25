Folders="music images videos logs others"
mfiles="*.mp3 *.flac"
ifiles="*.jpg *.png"
vfiles="*.avi *.mov"
logfiles="*.log"
others="*.*"
for fo in $Folders
do
echo Making a directory $fo
if [ $fo == music ]
then
mkdir $fo
mv $mfiles $fo
else
if [ $fo == images ]
then
mkdir $fo
mv $ifiles $fo
else
if [ $fo == videos ]
then
mkdir $fo
mv $vfiles $fo
else
if [ $fo == logs ]
then
mkdir $fo
mv $logfiles $fo
else
if [ $fo == others ]
then
mkdir $fo
mv $others $fo
fi
fi
fi
fi
fi
done
cd logs
rm -rf *.log
echo organization complete
