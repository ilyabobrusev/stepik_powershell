# Запрос ввода массива
$inputString = Read-Host "Введите элементы массива, разделенные пробелами или запятыми"

# Преобразование строки в массив чисел
$array = ($inputString -split "[ ,]+") | ForEach-Object { [double]$_ }

# Запрос числа-множителя
$multiplier = [double](Read-Host "Введите число, на которое нужно умножить элементы массива")

# Умножение элементов и вывод результата
$result = $array | ForEach-Object { $_ * $multiplier }

Write-Host "Исходный массив: $($array -join ', ')"
Write-Host "Множитель: $multiplier"
Write-Host "Результат умножения: $($result -join ', ')"
