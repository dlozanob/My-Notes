# Linux commands

- `setxkbmap -layout latam` -> Set language to default Spanish
- `sudo dpkg -i <package_file>.deb` -> Install a .deb file
- `sudo apt-get remove <package name>` -> Uninstall package

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

- Buscar un archivo -> `find $PWD -type f -name <archivo>`
- Buscar path de un comando -> `whereis`
- Crear link simbólico a un archivo: `ln -s <original> <puntero>`
	- `ln -s /usr/bin/python3 /usr/bin/python`


