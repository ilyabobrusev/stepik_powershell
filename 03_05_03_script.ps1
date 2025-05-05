$inputString = Read-Host "Введите строку для подсчета гласных букв"

# Регулярное выражение для поиска гласных (регистронезависимое)
$vowelMatches = [regex]::Matches($inputString, '[aeiou]', 'IgnoreCase')

$vowelCount = $vowelMatches.Count

Write-Host "Введенная строка: `"$inputString`""
Write-Host "Общее количество гласных букв: $vowelCount"

# Дополнительно: подсчет по каждой гласной
$vowelStats = $vowelMatches | Group-Object Value | Sort-Object Count -Descending

Write-Host "`nСтатистика по гласным:"
$vowelStats | ForEach-Object {
    Write-Host "$($_.Name): $($_.Count)"
}
