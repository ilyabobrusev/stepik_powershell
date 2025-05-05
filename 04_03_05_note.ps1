# Генерируем случайное число от 1 до 20
$secretNumber = Get-Random -Minimum 1 -Maximum 21

# Очищаем консоль и выводим приветствие
Clear-Host
Write-Host "Игра 'Угадай число от 1 до 20'" -ForegroundColor Cyan
Write-Host "----------------------------------"

# Счетчик попыток
$attempts = 0

do {
    # Запрашиваем число у пользователя
    try {
        $guess = [int](Read-Host "Ваша догадка (1-20)")
        $attempts++
        
        # Проверяем введенное число
        if ($guess -lt 1 -or $guess -gt 20) {
            Write-Host "Пожалуйста, введите число от 1 до 20!" -ForegroundColor Yellow
            continue
        }
        
        # Сравниваем с загаданным числом
        if ($guess -lt $secretNumber) {
            Write-Host "Загаданное число больше" -ForegroundColor Blue
        }
        elseif ($guess -gt $secretNumber) {
            Write-Host "Загаданное число меньше" -ForegroundColor Blue
        }
    }
    catch {
        Write-Host "Пожалуйста, введите целое число!" -ForegroundColor Red
    }
} until ($guess -eq $secretNumber)

# Поздравляем с победой
Write-Host ""
Write-Host "Поздравляю! Вы угадали число $secretNumber за $attempts попыток!" -ForegroundColor Green
Write-Host ""
