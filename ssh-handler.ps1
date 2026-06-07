param([string]$url)

try {
    $u = [uri]$url

    $user = $u.UserInfo
    $hostn = $u.Host
    $port = $u.Port

    $putty = "C:\Program Files\PuTTY\putty.exe"

    if (-not (Test-Path $putty)) {
        [System.Windows.MessageBox]::Show("PuTTY not found: $putty")
        exit 1
    }

    Start-Process $putty -ArgumentList "-ssh $user@$hostn -P $port"
}
catch {
    Add-Type -AssemblyName PresentationFramework
    [System.Windows.MessageBox]::Show($_.Exception.Message, 'KeePassXC SSH Handler')
}
