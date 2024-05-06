# Linux commands

- `setxkbmap -layout latam` -> Set language to default Spanish
- `sudo dpkg -i <package_file>.deb` -> Install a .deb file
- `sudo apt-get remove <package name>` -> Uninstall package
- `sudo reboot` -> Reboot
- Buscar un archivo -> `find $PWD -type f -name <archivo>`
- Buscar path de un comando -> `whereis`
- Crear link simbólico a un archivo -> `ln -s <original> <puntero>`
	- `ln -s /usr/bin/python3 /usr/bin/python`

---

- Divide terminal:

1. `screen`
2. Press `ENTER`
3. Divide:
	1. `CTRL + a` then `|` -> Vertically divide
	2. `CTRL + a` then `SHIFT + s` -> Horizontally divide

- Move between tabs: `CTRL + a` then `TAB`
- Activate new ones: `CTRL + a` then `c`
- Restore default: `CTRL + a` then ` d`
 
---

- Crear ejecutables:

Generar un script (executable.desktop): 

```Text file
[Desktop Entry]
Type=Application  
Categories=Software  
Name=Matlab  
Exec=/usr/local/MATLAB/R2024a/bin/matlab
```

Guardarlo en: `/usr/share/applications`

>[!Note]
> `/usr/share/applications` -> All users
> `~/.local/share/applications` -> Current users

---

- Setup git

1. Install git
2.  `git config --global user.name <user_name>`
3. `git config --global user.email <user_email>`

- Use repository
	- Github > Pick User icon > Settings > Dev Settings > Token -> Generate _Token_

>[!Warning]
>When `git push` __DO ONLY USE__ the  generated _token_ as password
>

- Implement with Obsidian
	- Switch remote URL from HTTPS to SSH
		- `remote set-url origin git@github.com:OWNER/REPOSITORY.git`

![](attachments/Pasted%20image%2020240505190438.png)

---

- Change hostname

1. Replace to new hostname: `sudo nano /etc/hostname`
2. Replace to new hostname: `sudo nano etc/hosts`
3. Reboot

>[!Warning]
>Changing the hostname will make Chrome stop working.
>- Troubleshoot: 
>	- `~/.config/google-chrome/`
>	- Delete all _SIngleton_ files




