![duckdns logo](https://brands.home-assistant.io/_/duckdns/logo.png)

# Duckdns.org update script
A really very simple IP update script using [duckdns.org](https://www.duckdns.org/) dns service.

 
### Configuration
Edit `update_ip.sh` script.

Set your duckdns token in `$duckDnsToken` variable and your subdomain name in the `$domain` variable

You can also modify the refresh interval in `$updateIntervalMinutes` variable. 

### Install
```update_ip.sh --install```
It will add a new entry to the current user's cron to run the script each `$updateIntervalMinutes`.

### Issues
In case something went wrong during the update process, it will write a message log in '/var/sys/log'.


Just enjoy!

-- 
