# Linux commands

## General

- Set language to default Spanish -> `setxkbmap -layout latam`
- Install a .deb file -> `sudo dpkg -i <package_file>.deb`
- Uninstall package -> `sudo apt-get remove <package name>`
- Reboot -> `sudo reboot`
- Buscar un archivo -> `find $PWD -type f -name <archivo>`
- Buscar path de un comando -> `whereis`
- Crear link simbólico a un archivo -> `ln -s <original> <puntero>`
	- `ln -s /usr/bin/python3 /usr/bin/python`
- Create file -> `touch <file_name>`
- Open default file manager
	- `xdg-open .`
	- `nautilus .`

- Star wars movie -> `nc towel.blinkenlights.nl 23`

## Divide terminal

1. `screen`
2. Press `ENTER`
3. Divide:
	1. `CTRL + a` then `|` -> Vertically divide
	2. `CTRL + a` then `SHIFT + s` -> Horizontally divide

- Move between tabs: `CTRL + a` then `TAB`
- Activate new ones: `CTRL + a` then `c`
- Restore default: `CTRL + a` then ` d`

## Generate executable files

FIle name: `<file_name>.desktop`

```Text file
[Desktop Entry]
Name=Obsidian  
Exec=/home/daniel/Desktop/Software/Obsidian/Obsidian-1.5.12.AppImage
Icon=/home/daniel/.local/share/icons/obsidian.png
Type=Application
Categories=Software  
Encoding=UTF-8
Terminal=false
Type=Application
Categories=Utility;
```

Save into: `/usr/share/applications`

>[!Note]
> `/usr/share/applications` -> All users
> `~/.local/share/applications` -> Current users

---

Suggested to store in the _current user_ path.

To set an icon:
	- Suggested _.png_ format
	- No dimension constraint
	- Save into `~/.local/share/icons`

## Git Setup

1. Install git
2.  `git config --global user.name <user_name>`
3. `git config --global user.email <user_email>`
4. `git add .` - `git commit -m ''`
5. `git config --global credential.helper store`
6. `git push`
7. User and token request (it won't request again in the future)


- Use repository
	- Github > Pick User icon > Settings > Dev Settings > Token -> Generate _Token_

>[!Warning]
>When `git push` __DO ONLY USE__ the  generated _token_ as password
>

- Implement with Obsidian
	- Switch remote URL from HTTPS to SSH
		- `git remote set-url origin git@github.com:OWNER/REPOSITORY.git`

![](attachments/Pasted%20image%2020240505190438.png)

## Change hostname

1. Replace to new hostname: `sudo nano /etc/hostname`
2. Replace to new hostname: `sudo nano etc/hosts`
3. Reboot

>[!Warning]
>Changing the hostname will make Chrome stop working.
>- Troubleshoot: 
>	- `~/.config/google-chrome/`
>	- Delete all _SIngleton_ files

## Format USB

1. Check units -> `lsblk`
2. Umount USB unit -> `sudo umount /dev/<USB_unit>`
3. Format -> `sudo mkfs.vfat -F 32 /dev/<USB_unit>`

>[!Note]
>`lsusb` for list USB units








