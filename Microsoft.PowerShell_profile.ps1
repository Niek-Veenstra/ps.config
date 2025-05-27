#Region Utility.
Set-Alias -Name c -Value clear
Set-Alias -Name reload -Value ReloadProfile
function clipboard(){
	Set-Clipboard @args
}
function ReloadProfile() {
    . $profile
}
function rmrf([string]$path) {
    Remove-Item -Recurse -Force $path
}
function touch(){
	New-Item @args
}
function usbs(){
	Get-WMIObject Win32_SerialPort | Select-Object DeviceID, Description
}
#End region Utility.

#Region NPM.
function nrd(){
	npm run dev
}
#End region NPM.

#Region PHP/Laravel.
function art() {
	php artisan @args
}
#End region PHP/Laravel.

#Region mysc.
$rp_ip = "172.18.0.1"
function rpi(){
     ssh "niekv@$rp_ip"
}
#End region mysc.

#Region GIT.
function pull(){
	git pull @args
}

function checkout(){
	git checkout @args
}

function commit(){
	git commit @args
}

function add(){
	git add @args
}

function branch(){
	git branch @args
}

function push(){
	git push @args
}
function merge(){
	git merge @args
}
#End region Git.

Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'
oh-my-posh init pwsh --config ~/pwsh10k.omp.json | Invoke-Expression
