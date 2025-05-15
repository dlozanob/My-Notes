# Linux commands

## General

- Print current working directory: `pwd`
- List directories: `ls`
	- Filtering by string: `ls <string>`
	- Recursive listing: `ls -R`
	- Label files: `ls -F`
		- / -> If directory
		- * -> If runnable program
- Change directory: `cd`
- Copy: `cp <file/folder>`
	- Duplicate: `cp <file> <duplicated_file>`
- Move: `mv <file_1> <file_n> <destination_path>`
	- Rename: `mv <file> <new_name>`
- Remove file: `rm <file>`
	- Recursively remove a directory: `rm -R <directory>`
- Remove empty directories: `rmdir <directory>`
- Make directory: `mkdir`
- Concatenate (print file's content): `cat <file>`
- Show single page of file: `less <file>`
	- Go to the next page: SPACEBAR
	- :n -> Go to the next file
	- :p -> Go to the previous file
	- :q -> Quit
- Print 10 first lines of a file: `head <file>`
	- Specify number of lines: `head -n <num_of_lines> <file>`
- Print last 10 lines of a file: `tail <file>`
	- Specify number of lines: `tail -n <num_of_lines> <file>`
	- Print all but *n* first lines: `tail -n +<num_of_lines> <file>`
- Show tool manual: `man <tool>`
- Print selected section from a data file: `cut <file>`
	- Example: Slecting columns 2-5, 8 using ',' as delimiter->`cut -f 2-5,8 -d ,`
- Print command history: `history`
	- Run the *nth* command: `!<n>`
	- Run the last used *command name* command: `!<command_name>`
- Select lines containing the given string: `grep <string> <file>`
	- Print a count of matching lines: `grep -c`
	- Don't print the names of files when searching multiple files: `grep -h`
	- Ignore casing: `grep -i`
	- Print the names of the files containing matches: `grep -l`
	- Print line numbers for matching lines: `grep -n`
	- Show not matching lines: `grep -v`





## Useful Commands

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
7. User and password (token) request (it won't request again in the future)

>[!Note] 
>**Generating a token:**
>Github > Pick User icon > Settings > Dev Settings > Token -> Generate _Token_

>[!Note]
>**Using Git in Obsidian:**
>Enable Community Plugins > Download and enable *Obsidian Git* plugin > Run `Create Backup` command 


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








