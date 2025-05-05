while ($true) {
    $userInput = Read-Host "Введите строку (для выхода введите 'exit')"
    if ($userInput -eq "exit") {
        Write-Output "Программа завершена"
        break
    }
}
