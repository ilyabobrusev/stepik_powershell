
function Test-PrimeNumber {
    param (
        [int]$number
    )
    
    # Проверка на натуральное число > 1
    if ($number -le 1) {
        Write-Host "Число должно быть натуральным и больше 1" -ForegroundColor Red
        return $false
    }
    
    # 2 - единственное четное простое число
    if ($number -eq 2) {
        return $true
    }
    
    # Все четные числа > 2 не являются простыми
    if ($number % 2 -eq 0) {
        return $false
    }
    
    # Проверка нечетных делителей до квадратного корня из числа
    $maxDivisor = [math]::Sqrt($number)
    for ($i = 3; $i -le $maxDivisor; $i += 2) {
        if ($number % $i -eq 0) {
            return $false
        }
    }
    
    return $true
}

# Ввод числа от пользователя
$inputNumber = [int](Read-Host "Введите натуральное число для проверки на простоту")

# Проверка и вывод результата
$isPrime = Test-PrimeNumber -number $inputNumber
Write-Host "$inputNumber -> $isPrime"
