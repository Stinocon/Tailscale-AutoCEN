# Tailscale-AutoCEN
A script to automatically change Tailscale Exit Node when used with Mullvad Add-on

**Use case**

I personally think it can be useful in case someone wants to create a download box: in this case to avoid showing the public IP in clear when using "sharing programs" you can use Tailscale (free) and its add-on Mullvad (paid).

The script is invoked once a week via cron.

This allows you to randomly select an exit-node from the list of servers offered by Mullvad VPN.

**How to**

1. Download the script and place it wherever you want
2. Give execution permissions with `chmod +x tailscale-autocen.sh`
3. Create a new crontab setup with `crontab -e`
4. Profit

**Why?**

Why not?

**Notes**

Personally, i run the script once a week.
If you need help generating a cron you can use the following online tool: https://crontab.tech/
