do {
    $password = Read-Host "Введите пароль (минимум 8 символов, включая цифру и букву)"
    
    # Проверка длины пароля
    $isLengthValid = $password.Length -ge 8
    
    # Проверка наличия хотя бы одной цифры
    $hasDigit = $password -match "\d"
    
    # Проверка наличия хотя бы одной буквы (латиница или кириллица)
    $hasLetter = $password -match "[a-zA-Zа-яА-Я]"
    
    # Вывод ошибок
    if (-not $isLengthValid) {
        Write-Host "Ошибка: пароль должен содержать не менее 8 символов!" -ForegroundColor Red
    }
    if (-not $hasDigit) {
        Write-Host "Ошибка: пароль должен содержать хотя бы одну цифру!" -ForegroundColor Red
    }
    if (-not $hasLetter) {
        Write-Host "Ошибка: пароль должен содержать хотя бы одну букву!" -ForegroundColor Red
    }
    
} until ($isLengthValid -and $hasDigit -and $hasLetter)

Write-Host "Пароль принят!" -ForegroundColor Green
