# Windows Commands


```CMD
tasklist // Display processes
taskkill /F /PID <PID_NUM> // Kill process by PID
```

## CMD & Windows

- Command to BIOS: `shutdown /r /fw /t 1`

- Startup/Shutdown Script Automation
	1. Win + R
	2. gpedit.msc
	3. Computer Configuration > Windows Settings > Scripts (Startup/Shutdown)
	4. Double click Startup/Shutdown
	5. Add Script
	6. Browse Batch Script


## Useful Commands

- List all open ports under TCP: `netstat -anp tcp`
- Close a port
  - Lookup the service number: `netstat -ano | findstr :51518`
  - Kill the service: `taskkill /PID <PID> /F`