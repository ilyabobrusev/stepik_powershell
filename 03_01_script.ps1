$ageInput = Read-Host "Введите возраст"

if ($ageInput -match '^\d+$') {
    $age = [int]$ageInput
    if ($age -lt 18) {
        Write-Output "Вы несовершеннолетний"
    }
    elseif ($age -ge 18 -and $age -le 64) {
        Write-Output "Вы совершеннолетний"
    }
    elseif ($age -ge 65 -and $age -le 105) {
        Write-Output "Вы пенсионер"
    }
    elseif ($age -gt 105) {
        Write-Output "Вы скорее всего мертвы"
    }
} else {
    Write-Output "Некорректный ввод. Введите число!"
}


