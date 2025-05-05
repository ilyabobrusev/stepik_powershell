function Get-RaindropSound {
    param (
        [int]$number
    )

    $result = ""

    if ($number % 3 -eq 0) { $result += "Pling" }
    if ($number % 5 -eq 0) { $result += "Plang" }
    if ($number % 7 -eq 0) { $result += "Plong" }

    if ($result -eq "") {
        return $number.ToString()
    }
    else {
        return $result
    }
}

# Запрос числа у пользователя
$userNumber = Read-Host "Введите число для преобразования в звук капель дождя"

# Преобразование в число и обработка
try {
    $number = [int]$userNumber
    $sound = Get-RaindropSound -number $number
    Write-Host "Результат: $sound"
}
catch {
    Write-Host "Ошибка: Введите целое число"
}