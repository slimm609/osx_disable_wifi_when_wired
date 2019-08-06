if [[ ${EUID} -ne 0 ]]; then
  echo "Error: This script must be run as root."; exit 1
fi

cp toggleAirport.sh /Library/Scripts/
chmod 755 /Library/Scripts/toggleAirport.sh
cp com.self.toggleairport.plist /Library/LaunchAgents/
chmod 644 /Library/LaunchAgents/com.self.toggleairport.plist
launchctl load /Library/LaunchAgents/com.self.toggleairport.plist