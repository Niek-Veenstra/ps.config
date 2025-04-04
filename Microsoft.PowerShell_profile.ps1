function nrd(){
	npm run dev
}

Set-Alias c clear

function clipboard(){
	Set-Clipboard @args
}

function art() {
	php artisan @args
}

$rp_ip = "172.18.0.1"
function rpi(){
     ssh "niekv@$rp_ip"
}

function ReloadProfile() {
    . $profile
}

Set-Alias -Name reload -Value ReloadProfile

function rmrf([string]$path) {
    Remove-Item -Recurse -Force $path
}

function touch(){
	New-Item @args
}

function usbs(){
	Get-WMIObject Win32_SerialPort | Select-Object DeviceID, Description
}