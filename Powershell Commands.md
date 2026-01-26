# Powershell Commands

- List processes inside a folder

    ```
    Get-Process | Where-Object { $_.Path -like "$folder\*" } | Select-Object Name, Id, Path
    ```


- Kill processes inside a folder

    ```
    cd <DestinationPath>
    ```

    ```
    Get-Process | ?{$_.path -and (test-path (split-path $_.path -leaf ))} | Stop-Process -Force

    
    Get-Process | Where-Object {
        $_.Modules.FileName -like "C:\Path\To\BRC\*" 
    } | Select Name, Id
    ```


Get-Process | Where-Object {
    $_.Modules.FileName -like "C:\Users\lozanobarrerod\Desktop\BRC\*"
} | Stop-Process -Force
