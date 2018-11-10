while true; do
sleep 30
resul=$(curl -H "Accept: application/xml" -H "Content-Type: application/xml" -X GET "https://www.instagram.com/fratclips/" | grep "Followers")
resul=${resul:23:5}
echo $resul
resul=$(echo $resul | sed 's/,//g')
echo "fratclips.followers $resul `date +%s`" | nc localhost 2003;
done