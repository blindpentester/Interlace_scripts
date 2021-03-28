# Interlace_scripts
This is a location where I wanted to share my Interlace scripts/examples for large/small size campaigns or fun automation for various other things I could think of.
  
## Don't judge the sloppyness of these >:|  
  
### Structure for scripts
    _block:name_ - Commands between the "blocks" will run in sequential order from top to bottom.
    _blocker_ - This tells the script to stop processing other commands until the ones above are completed
    Bash Scripting - Interlace does not take bash scripting commands, so it is important to have  
                     your script.sh ready to be called to within a block if you wish it to be used.
                     
                     
### Command Lists
    - Example for running Interlace Scripts
      `interlace -tL <target list> -cL <command list>`
      
    - Example for running Interlace without scripts
`interlace -tL <target list> -c "interlace -tL <target list> -c "sslscan _target_ | tee ./_target_-sslscan.txt"`
`interlace -t 192.168.1.1-254 -c "nmap -sV -sC -vv -p- -g 80 -T4 _target_ -oN ./_target_-nmap.txt"`

### recon/
    - Script is set to make directories for nmap, dig_whois, sslscan, theHarvester, shodan 
      (API key required for this to work), dnsrecon, ASN and sublist3r.
    - Script is intended for collecting information on domain names.

### OSINT/
    - This was originally setup to do a lot of dig requests and whois.  Recon does this too.
    - Runs AMASS for passive scan to pull subdomians and cleans them up with jq
    - sublist3r was on this but it was eventually removed.

### web/
    - This was setup for mainly digging into http(s) pages.  gospider will spider the page and 
      create output.  Edit script on url bit if not https.
    - Nikto & nmap scans will run (this can take some time)
    - DNSEnum runs
