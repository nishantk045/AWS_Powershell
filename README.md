Set-ExecutionPolicy -ExecutionPolicy Unrestricted

Install-Module -Name AWS.Tools.Installer

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
 
Install-Module -Name AWS.Tools.Installer
Install-Module -Name AWS.Tools.Installer -Force

Install-Module -Name AWSPowerShell

Set-AWSCredential -AccessKey AKIAWQN22C6AN4SX46CY –SecretKey uSj28lW0HWU9auMIFrJmBEqyrWP7YI4vzEg2aana -StoreAs MyNewProfile
