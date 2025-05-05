function Get-DNACount {
    param (
        [string]$dnaSequence
    )

    # Проверка на валидность последовательности
    if ($dnaSequence -match '[^ACGT]') {
        Write-Error "Ошибка: последовательность ДНК содержит недопустимые символы"
        return
    }

    # Инициализация счетчиков
    $countA = 0
    $countC = 0
    $countG = 0
    $countT = 0

    # Подсчет каждого нуклеотида
    foreach ($nucleotide in $dnaSequence.ToCharArray()) {
        switch ($nucleotide) {
            'A' { $countA++ }
            'C' { $countC++ }
            'G' { $countG++ }
            'T' { $countT++ }
        }
    }

    # Создание объекта с результатами
    $result = [PSCustomObject]@{
        A = $countA
        C = $countC
        G = $countG
        T = $countT
    }

    return $result
}

# Интерактивная версия с запросом ввода
$userInput = Read-Host "Введите последовательность ДНК (только A, C, G, T)"

try {
    $result = Get-DNACount -dnaSequence $userInput.ToUpper()
    if ($result) {
        Write-Host "Результат подсчета:"
        $result | Format-Table -AutoSize
    }
}
catch {
    Write-Host $_.Exception.Message
}
