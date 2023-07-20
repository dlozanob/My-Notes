# Fundamentals of penetration testing

## Preparing for the attack

Using _ICANN|LOOKUP_ tool we can grab information from servers.

![](attachments/Pasted%20image%2020230720010535.png)

We can get a DNS response from a server by using _DIG_ tool:

```Shell
dig ns1.<URL>

// Example
dig ns1.google.com
```

>[!Note]
>A domain can has many servers, therefore, the `ns<num>` could take the number of the servers. E.g: `ns1`, `ns2`, etc


With _Spyse_ it's possible to find subdomains.

![](attachments/Pasted%20image%2020230720013128.png)

For instance there can be find google's subdomains such as: webplus.google.com

With https://www.google.com/robots.txt it's possible to know how google index their information in the domain, since it gives the Google's website's structure.

![](attachments/Pasted%20image%2020230720014150.png)

A page for instance: https://www.google.com/alerts

Disallowed links are not public accessible, even though, some of them can be accessed by just writing the URL.

_Shodan_ is a tool for search for internet connected devices. So it's possible to identify devices from a domain.

![](attachments/Pasted%20image%2020230720020403.png)




## Gaining initial access

## Knocking on the front door

## Looking at packages

## Accessing accounts
