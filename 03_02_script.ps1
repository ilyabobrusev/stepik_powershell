$osName = Read-Host "Enter OS name:"

switch ($osName) {
  "Windows" {
    Write-Host "Вы используете ОС семейства Windows"
  }
  { $_ -eq "Ubuntu" -or $_ -eq "Debian" } {
    Write-Host "Вы используете ОС семейства Linux"
  }
  "macOS" {
    Write-Host "Вы используете ОС семейства macOS"
  }
  default {
    Write-Host "Неизвестная операционная система"
  }
}
