# Запрашиваем у пользователя число
$number = Read-Host "Введите число для обратного отсчёта"

# Проверяем, что введено целое неотрицательное число
if (-not ($number -match '^\d+$')) {
    Write-Host "Ошибка: Введите целое неотрицательное число!"
    exit
}

# Преобразуем ввод в число
$number = [int]$number

while ($number -ge 0) {
    Write-Output $number
    # Уменьшаем число на 1
    $number--
}

Write-Output "Отсчёт завершён!"
