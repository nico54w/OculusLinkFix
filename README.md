# Important

IMPORTANT, Having the Execution-Policy set to Unrestricted-RemoteSigned is necesary to run Scripts on Windows!

1. Please start Windows Powershell as Administrator.
2. Enable running unsigned scripts with this command:
```powershell
Set-ExecutionPolicy RemoteSigned
```
OR
```powershell
Set-ExecutionPolicy Unrestricted
```

# Instructions
Please open the Oculus App before this.

1. Download restarter.ps1
2. Right click restarter.ps1 and select "run with Powershell"
3. Select your INTEGRATED Gpu
4. Accept elevated rights

The screen should black out and come back a second later. The Oculus App will close and re-open,

After the first run, a config.xml will be created. And the script will no longer ask for your gpu.

# !!!
This script does not change nothing permanently on your computer. The only thing it does is restart your integrated gpu.

This script was only tested on my computer Lenovo Ideapad Gaming 3 (Ryzen 7 4800h, GTX 1650). Hope it works on yours but I promise nothing :P