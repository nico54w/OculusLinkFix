$gpuPath = ".\config.xml";
function DefineIGPU {
    if (Test-Path $gpuPath) {
        $iGPU = Import-Clixml -Path $gpuPath;
        $pnpValue = $iGPU.PNPDeviceID;
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -command {0}' -f ("pnputil.exe /restart-device '{0}'" -f $pnpValue));
        return;
    }
    $a = Get-CimInstance -ClassName "Win32_VideoController" | Select-Object -Property Description, PNPDeviceID;
    for ($i = 0; $i -le $a.Length - 1; $i++) {
        Write-Host ([string]::Format("  {0} -- {1}", $i, $a[$i].Description));
    }
    $b = Read-Host ([string]::Format("Select Your INTEGRATED GPU Number [0-{0}]", $a.Length - 1));
    if($a[$b]){
        $a[$b] | Export-Clixml -Path $gpuPath;
    }
    DefineIGPU;
}
DefineIGPU;