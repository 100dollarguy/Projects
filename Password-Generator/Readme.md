# Passphrase Generator

## What is this?

This script helps you create strong and memorable passphrases. Passphrases are like passwords, but longer and easier to remember.

## Why use passphrases?

Passphrases are more secure than traditional passwords because they are longer and contain multiple words or characters. They are also easier to remember, which means you're less likely to write them down or forget them.

## How does it work?

This script gives you two options for creating passphrases:

1. **Generate passphrase from EFF word list:** This option creates a passphrase using a list of common English words provided by the Electronic Frontier Foundation (EFF). These words are easy to remember but hard for attackers to guess.

2. **Generate random passphrase:** This option creates a passphrase using a random combination of letters and numbers. These passphrases are highly secure but may be harder to remember.

## Requirements

- **Windows:**
  - PowerShell

- **macOS:**
  - Zsh (pre-installed)

- **Linux:**
  - Zsh (pre-installed)

## How to use

1. **Download the script:**
   - [Passphrase Generator Script for Windows](https://github.com/100dollarguy/Projects/blob/main/Password-Generator/password_generator.sh)
   - [Passphrase Generator Script for macOS and Linux](https://github.com/100dollarguy/Projects/blob/main/Password-Generator/passphrase_generator_mac_linux.sh)

2. **Open a terminal or command prompt window:**
   - **Windows:** Search for "PowerShell" in the Start menu.
   - **macOS:** Open the "Terminal" app, usually found in the "Utilities" folder within the "Applications" folder.
   - **Linux:** Open a terminal emulator, such as GNOME Terminal or Konsole.

3. **Navigate to the script directory:**
   - Use the `cd` command to navigate to the directory where you extracted the script.

4. **Set the script as executable (if necessary):**
   - **Windows and macOS:** Not applicable.
   - **Linux:** If the script is not already executable, you can make it executable using the following command: `chmod +x passphrase_generator.sh`.

5. **Run the script:**
   - Type the following command and press Enter:
     - **Windows:** `powershell.exe -ExecutionPolicy Bypass -File passphrase_generator.ps1`
     - **macOS and Linux:** `./passphrase_generator_mac_linux.sh`
   - Follow the on-screen instructions to choose the type and length of passphrase you want.

6. **Save your passphrase:**
   - After the script generates a passphrase, write it down or memorize it. Do not share it with anyone else.

## License

This project is licensed under the [MIT License](https://github.com/100dollarguy/Projects/blob/main/Password-Generator/LICENSE).

## Feedback and support

If you encounter any issues or have suggestions for improvement, please feel free to open an issue or submit a pull request.

Happy passphrase generating!
