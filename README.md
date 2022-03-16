# Duckdns.org update script


Try this markdown:

![duckdns logo](https://brands.home-assistant.io/_/duckdns/logo.png)


### Configuration
Edit `update_ip.sh` script.

Set your duckdns token in `$duckDnsToken` variable and your subdomain name in the `$domain` variable

You can also modify the interval refresh period in `$updateIntervalMinutes` variable. 

### Install

```update_ip.sh --install```
It will add a new entry to current user cron.



-- 
