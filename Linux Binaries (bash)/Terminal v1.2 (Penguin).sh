#!/bin/bash

# Set terminal title
echo -ne "\033]0;GLaDOS Terminal v1.2 (Penguin)\a"

# Clear screen
clear

# Warning message
echo "Warning: This is an unlisenced Terminal :( Please purchase a coopy! "
echo "Finding Kernel........."
echo "Kernel Found! Booting environment: GLaDOS"
read -p "Press Enter to continue..."

# Clear screen
clear

# Get username
echo "What is your name?"
read name

# Clear screen
clear

echo "Logon Success!"
echo "Hello User $name,"
echo
read -p "Press Enter to continue..."

# Main menu function
main_menu() {
    while true; do
        clear
        echo "Which program would you Like to use?"
        echo
        echo "1. System Info 2. Calc 3. Songs 4. Antivirus 5. Games 6. Exit"

        read -p "> " input

        case $input in
            1) system_info ;;
            2) calculator ;;
            3) songs ;;
            4) antivirus ;;
            5) games ;;
            6) exit ;;
            *) echo "Invalid option"; sleep 2 ;;
        esac
    done
}

# Calculator function
calculator() {
    clear
    # Use bc for calculation if available
    if command -v bc &> /dev/null; then
        bc
    else
        echo "Calculator not available"
    fi
    read -p "Press Enter to continue..."
}

# Songs function
songs() {
    clear
    echo "No folders called \"Songs\" Found"
    read -p "Press Enter to continue..."
}

# Antivirus function
antivirus() {
    clear
    echo "ERROR 404 Program not found"
    echo "Returning to home."
    read -p "Press Enter to continue..."
}

# Games function
games() {
    clear
    echo
    echo "No installed games on system. Returning to homepage."
    echo
    read -p "Press Enter to continue..."
}

# System Info function
system_info() {
    clear
    echo "=========================="
    echo "     GLaDOS TERMINAL 1.2"
    echo "=========================="
    echo "     DETAILS"
    echo
    echo "     VERSION = 1.2"
    echo
    echo "     RAM = [missing]"
    echo
    echo "     CORE = [missing]"
    echo
    echo "     HARD_DRIVE = [missing]"
    echo
    echo "     Kernel ver = 5.6.7"
    echo
    echo "    Build = 7000 (DEVELOPER EDITION)"
    echo
    echo "-----------------------------------------"
    echo "     @Copyright Aperture Science"
    echo "-----------------------------------------"

    echo "  1. Check for an update"
    echo "  2. Read Terms Of Service"
    echo "  3. Menu"

    read -p "> " check

    case $check in
        1) update ;;
        2) terms_of_service ;;
        3) return ;;
        *) echo "Invalid option"; sleep 2 ;;
    esac
}

# Exit function
exit() {
    exit
}

# Update function
update() {
    clear
    echo "Checking for new version/Update............."
    echo
    read -p "Press Enter to continue..."

    clear
    echo
    echo "This is the developer console it does not get new versions released and is only used by staff of GLaDOS Terminal."
    echo
    read -p "Press Enter to continue..."
}

# Terms of Service function
terms_of_service() {
    clear
    echo "Please read this:"
    echo "-----------------------------------"
    echo "   GLaDOS TERMINAL TOC"
    echo "-----------------------------------"
    echo
    echo "This was coded by block_place1232."
    echo "If you use ANY of the source code please credit me in your program."
    echo "Rights of Portal, Portal 2 and other registered trademarks belong to Valve. I am only using them as a base for my terminal."
    echo "This program does not contain virus code or malware. Latest versions are online all the time."
    echo "DO NOT DOWNLOAD ANYWHERE ELSE AS THEY COULD CONTAIN MALWARE OR HAVE UN-CREDITED CODE."
    echo
    echo "By using this program you automatically sign this contract."
    echo
    echo "- block_place1232 (Creator of the program)"
    echo "- $name You"
    read -p "Press Enter to continue..."
}

# Start the main menu
main_menu
