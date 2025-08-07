# WinRAR Cracker (Batch Script)

This project is a simple batch script that performs a dictionary attack on a password-protected WinRAR (.rar) or .zip archive using 7-Zip.

## 🔧 How It Works

- It reads a list of passwords from `wordlist.txt`
- Tries each password using 7-Zip (`7z t -pPASSWORD archive.rar`)
- Prints the correct password if found

## 📂 Files

- `cracker.bat` — Main batch script
- `wordlist.txt` — Password dictionary

## 🧪 Requirements

- [7-Zip] must be installed and added to system PATH

## ✅ How to Use

1. Place your `.rar` file in the same folder as the script
2. Make sure `wordlist.txt` contains your password list
3. Run `cracker.bat`
