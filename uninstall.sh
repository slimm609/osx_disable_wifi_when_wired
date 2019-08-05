if [[ ${EUID} -ne 0 ]]; then
  echo "Error: This script must be run as root."; exit 1
fi

launchctl unload /Library/LaunchAgents/com.mine.toggleairport.plist
rm -f /Library/Scripts/toggleAirport.sh /Library/LaunchAgents/com.mine.toggleairport.plist