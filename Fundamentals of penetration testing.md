# Fundamentals of penetration testing

## Preparing for the attack

### Analyzing DNS records

Using _ICANN|LOOKUP_ tool we can grab information from servers.

![](attachments/Pasted%20image%2020230720010535.png)

We can get a DNS response from a server by using _DIG_ tool:

```Shell
dig ns1.<URL>

// Example
dig ns1.google.com
```

>[!Note]
>A domain can have many servers, therefore, the `ns<num>` could take the number of the servers. E.g: `ns1`, `ns2`, etc

### Identifying subdomains

With _Spyse_ it's possible to find subdomains.

![](attachments/Pasted%20image%2020230720013128.png)

For instance, it's possible to find google's subdomains such as: webplus.google.com

With https://www.google.com/robots.txt it's possible to know how google index their information in the domain, since it gives the Google's website's structure.

![](attachments/Pasted%20image%2020230720014150.png)

A page for instance: https://www.google.com/alerts

Disallowed links are not public accessible, even though, some of them can be accessed by just writing the URL.

### Identifying IOT devices

_Shodan_ is a tool for search for internet connected devices. So it's possible to identify devices from a domain.

![](attachments/Pasted%20image%2020230720020403.png)

For instance, by trying `org:Google`, we get:

![](attachments/Pasted%20image%2020230720021129.png)

Selecting a device will give it's information:

![](attachments/Pasted%20image%2020230720021257.png)

The search engine allows IP addresses as input.

We could find IOT devices using the deprecated Telnet protocol, by searching `port:23`.

![](attachments/Pasted%20image%2020230720022107.png)

Look some of them are requesting a login response.

There's also possible to search for specific devices, like 'thermostats'.

![](attachments/Pasted%20image%2020230720022328.png)

### OSINT

Stands for _Open Source Intelligence Gathering_. Useful to get information from a target.

An OSINT online tool is _OSINT Framework_.

![](attachments/Pasted%20image%2020230720023155.png)

_Google Dorking_ is taking advantage of the keywords of the google search engine.
Some keywords are:

```Google
"milkshakes" // Gets information about milkshakes
site:microsoft.com // Gets microsoft domain outputs
filetype:pdf // Pdf files
intext:"chocolate" // Results must include the word 'chocolate'
```


>[!Note]
>`inurl:"ViewerFrame?Mode="` -> Find cameras

### Identifying services

_Ncat_ can be used to connect to a port, or become a server hosting on a port.

It behaves like a real time chat:

![](attachments/Pasted%20image%2020230720031430.png)






## Gaining initial access

## Knocking on the front door

## Looking at packages

## Accessing accounts
