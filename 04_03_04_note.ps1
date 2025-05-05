function Test-LeapYear {
    param (
        [int]$year
    )

    if ($year % 4 -ne 0) {
        return $false
    }
    elseif ($year % 100 -ne 0) {
        return $true
    }
    else {
        return ($year % 400 -eq 0)
    }
}

# Интерактивная версия с запросом года у пользователя
$inputYear = Read-Host "Введите год для проверки на високосность"

try {
    $year = [int]$inputYear
    $isLeap = Test-LeapYear -year $year
    Write-Host "Год $year является високосным: $isLeap"
}
catch {
    Write-Host "Ошибка: введите целое число"
}
