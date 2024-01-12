# Prompt the user to run the script as an administrator
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
  $arguments = "& '" + $MyInvocation.MyCommand.Definition + "'"
  Start-Process powershell -Verb runAs -ArgumentList $arguments
  Break
}

# The rest of your script goes here
