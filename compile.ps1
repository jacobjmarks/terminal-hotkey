$ErrorActionPreference = "Stop"

Push-Location (Split-Path $MyInvocation.MyCommand.Path)

try {
    $AhkPath = (Get-ItemProperty "HKLM:/SOFTWARE/AutoHotkey" -ErrorAction Ignore)."InstallDir"
    if (-not $AhkPath) {
        Write-Error "It looks like AutoHotKey isn't installed. Please see https://www.autohotkey.com/"
    }

    $Ahk2Exe = Join-Path $AhkPath "Compiler/Ahk2Exe.exe"
    $Base = Join-Path $AhkPath "Compiler/Unicode 32-bit.bin"

    & $Ahk2Exe /in terminal.ahk /base $Base | Out-Host
    if ($LASTEXITCODE -ne 0) { return }

    & $Ahk2Exe /in terminal-preview.ahk /base $Base | Out-Host
    if ($LASTEXITCODE -ne 0) { return }
}
finally {
    Pop-Location
}
