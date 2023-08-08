# Installing IIS Web Server
$installScript = @"
DISM /Online /Enable-Feature /All /FeatureName:IIS-WebServer /NoRestart

cd C:\inetpub\wwwroot

# List of Directory
dir

# Creating a directory
mkdir dd

# Moving files that start with ii* to the directory dd
move ii* dd/

# Creating a new html file
echo This is my new WebPage > index.html

# Go to localhost
start http://127.0.0.1
"@

# Run the installation script
Invoke-Expression -Command $installScript