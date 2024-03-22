#!/bin/zsh

# Fetch EFF word list from the internet
eff_word_list_url="https://www.eff.org/files/2016/07/18/eff_large_wordlist.txt"
eff_word_list=$(curl -s "$eff_word_list_url")

# Convert EFF word list into an array
eff_word_array=("${(@f)eff_word_list}")

# Function to generate a random passphrase using words from the EFF word list
generate_eff_passphrase() {
    local num_words=$1
    local passphrase=""
    for ((i=1; i<=$num_words; i++)); do
        local word=${eff_word_array[RANDOM % ${#eff_word_array[@]}]}
        # Remove numbers from the word
        word=${word//[0-9]/}
        # Trim white spaces
        word=$(echo -n "$word" | tr -d '[:space:]')
        passphrase+="$word-"
    done
    # Remove the trailing "-" character
    echo "${passphrase%-}"
}

# Function to generate a random passphrase using OpenSSL
generate_random_passphrase() {
    local num_chars=$1
    openssl rand -base64 $num_chars | tr -dc 'a-zA-Z0-9' | head -c $num_chars
}

echo "Select an option:"
echo "1. Generate passphrase from EFF word list"
echo "2. Generate random passphrase"

echo -n "Enter your choice (1 or 2): "
read choice

if [[ $choice == "1" ]]; then
    echo -n "Enter the number of words for EFF word list passphrase: "
    read num_words
    echo "EFF word list passphrase: $(generate_eff_passphrase $num_words)"
elif [[ $choice == "2" ]]; then
    echo -n "Enter the number of characters for random passphrase: "
    read num_chars
    echo "Random passphrase: $(generate_random_passphrase $num_chars)"
else
    echo "Invalid choice. Please enter either 1 or 2."
fi

