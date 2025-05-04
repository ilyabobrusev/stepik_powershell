$age = Read-Host "Введите ваш возраст"
if (-not ($age -as [int])) {
    Write-Host "Пожалуйста, введите корректный возраст."
} else {
    age=[int]age=[int]age
    if ($age -lt 18) {
        Write-Host "Вы несовершеннолетний."
    } elseif (age−ge18−andage−ge18−andage -le 64) {
        Write-Host "Вы совершеннолетний."
    } elseif (age−ge65−andage−ge65−andage -le 105) {
        Write-Host "Вы пенсионер."
    } elseif ($age -gt 105) {
        Write-Host "Вы скорее всего мертвы."
    }
}