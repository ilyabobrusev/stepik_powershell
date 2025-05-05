function Get-BobResponse {
    param (
        [string]$message
    )

    if ([string]::IsNullOrWhiteSpace($message)) {
        return "Отлично. Будь по-твоему!"
    }

    $isQuestion = $message.TrimEnd().EndsWith('?')
    $isShouting = $message -eq $message.ToUpper() -and $message -match '[A-ZА-Я]'

    if ($isShouting -and $isQuestion) {
        return "Успокойся, я знаю, что делаю!"
    }
    elseif ($isShouting) {
        return "Вау, остынь!"
    }
    elseif ($isQuestion) {
        return "Конечно"
    }
    else {
        return "Неважно"
    }
}

# Запрос ввода у пользователя
$userInput = Read-Host "Что вы скажете Бобу?"

# Получение и вывод ответа Боба
$bobResponse = Get-BobResponse -message $userInput
Write-Host "Боб отвечает: $bobResponse"