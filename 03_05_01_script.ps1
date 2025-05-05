function Get-CollatzSteps {
    param (
        [int]$n
    )
    
    $steps = 0
    
    if ($n -le 0) {
        Write-Error "Число должно быть положительным"
        return
    }
    
    while ($n -ne 1) {
        if ($n % 2 -eq 0) {
            $n = $n / 2
        }
        else {
            $n = 3 * $n + 1
        }
        $steps++
        Write-Host $n
    }
    
    return $steps
}

$number = Read-Host "Введите положительное целое число"
$steps = Get-CollatzSteps -n $number
Write-Host "Количество шагов до достижения 1: $steps"
