# Windows PowerShell Script
# This script generates passphrases using the EFF word list or random characters.

# Fetch EFF word list from the internet
$eff_word_list_url = "https://www.eff.org/files/2016/07/18/eff_large_wordlist.txt"
$eff_word_list = Invoke-WebRequest -Uri $eff_word_list_url -UseBasicParsing | Select-Object -ExpandProperty Content

# Convert EFF word list into an array
$eff_word_array = $eff_word_list -split "`n"

# Function to generate a random passphrase using words from the EFF word list
function Generate-EffPassphrase {
    param(
        [int]$num_words
    )
    $passphrase = ""
    for ($i = 1; $i -le $num_words; $i++) {
        $word = $eff_word_array[(Get-Random -Minimum 0 -Maximum $eff_word_array.Count)]
        # Remove numbers from the word
        $word = $word -replace '\d', ''
        # Trim white spaces
        $word = $word.Trim()
        $passphrase += "$word-"
    }
    # Remove the trailing "-" character
    $passphrase.TrimEnd('-')
}

# Function to generate a random passphrase using OpenSSL
function Generate-RandomPassphrase {
    param(
        [int]$num_chars
    )
    $passphrase = -join ((65..90) + (97..122) + (48..57) | Get-Random -Count $num_chars | ForEach-Object {[char]$_})
    $passphrase
}

Write-Host "Select an option:"
Write-Host "1. Generate passphrase from EFF word list"
Write-Host "2. Generate random passphrase"

$choice = Read-Host "Enter your choice (1 or 2)"

if ($choice -eq "1") {
    $num_words = Read-Host "Enter the number of words for EFF word list passphrase"
    Write-Host "EFF word list passphrase: $(Generate-EffPassphrase $num_words)"
} elseif ($choice -eq "2") {
    $num_chars = Read-Host "Enter the number of characters for random passphrase"
    Write-Host "Random passphrase: $(Generate-RandomPassphrase $num_chars)"
} else {
    Write-Host "Invalid choice. Please enter either 1 or 2."
}
