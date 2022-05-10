Set-Location C:\Users\User\cs151\Server

# Purge DB and run server
Set-Variable FLASK_ENV=development
Start-Process clean.bat
Start-Process run-server.bat
Start-Sleep 2

# Start client program
Set-Location C:\Users\User\cs151\Client
if ($args[1] -eq "admin") {
    Start-Process client.exe -Verb runAs
}
elseif ($args[1] -eq "debug") {
    Write-Output "[run-test] Start debugger and press enter: "
    [System.Console]::ReadKey() | Out-Null
    Write-Output "[run-test] Continuing..."
}
else {
    Start-Process client.exe
}

Start-Sleep 2

Set-Location C:\Users\User\cs151\Server\cli

function Start-ClientCommand ([String] $ClientID, [String] $Command) {
    $UseClient = -join ("use ", $ClientID)
    Write-Output "agents" $UseClient $Command | py .\cli.py    
}

function Get-ClientID {
    $Output = Write-Output agents list | py .\cli.py
    $IDLines = $Output | Select-String -Pattern ID`t`t 
    $Tokens = -split $IDLines
    return $Tokens[2]
}

function Get-TaskID {
    $Output = Start-ClientCommand $ClientID "history"
    $IDLines = $Output | Select-String -Pattern ID`t`t 
    $Tokens = -split $IDLines[1]
    return $Tokens[2]
}

# Get client id
$ClientID = Get-ClientID
Write-Output "Client ID: " $ClientID

# Expand path for test file
$ResourcePath = -join ("C:\Users\User\cs151\Testing\Tests\", $args[0])

try {
    # Execute test script line by line
    foreach ($line in Get-Content $ResourcePath) {
        Write-Output ( -join ("`n`n============================`n[run-test] Executing Command: ", $line))
        Start-ClientCommand $ClientID $line | Out-Null
        Write-Output "[run-test] Press Enter to Retrieve Execution Result and Run Next Task: "
        [System.Console]::ReadKey() | Out-Null
        $TaskID = Get-TaskID
        Start-ClientCommand $ClientID ( -join ("task ", $TaskID))
    }
    Write-Output `n
    Write-Output "[run-test] Test completed, press enter to quit"
    [System.Console]::ReadKey() | Out-Null
}
finally {
    # Cleanup: Stop all server and client process running in background
    taskkill /f /im "flask.exe"
    taskkill /f /im "client.exe"

    # Go back to tests directory
    Set-Location C:\Users\User\cs151\Testing\Tests\
}


