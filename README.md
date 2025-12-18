# 📿 Dhikr Notifications Script

A bash script that displays Islamic reminders (أذكار) as desktop notifications on Linux systems. Perfect for continuous remembrance throughout your workday.

![Dhikr Notifications](https://img.shields.io/badge/Dhikr-Islamic_Reminders-purple)
![Bash](https://img.shields.io/badge/Bash-Script-green)
![Platform](https://img.shields.io/badge/Platform-Linux-blue)
![License](https://img.shields.io/badge/License-MIT-yellow)

## ✨ Features

- 📱 **Desktop Notifications**: Displays dhikr as system notifications
- 🎨 **Beautiful UI**: Purple theme with dark background
- 🔄 **Automatic Cycling**: Different dhikr every minute
- 🎯 **Unique Icons**: Each notification has a different icon
- ⚙️ **Customizable**: Easy to modify dhikr list, icons, and timing
- 🔄 **Auto-start**: Can run automatically on system login


## 🚀 Quick Start

### Prerequisites
- Linux system with desktop notifications
- `notify-send` command
- Bash shell

### Installation
```bash
cd ~
git clone https://github.com/abdelouahedait/.scripts
chmod +x .scripts/adkar.sh
vi .bashrc  # Add the script to run on startup if desired
    ```vim
    # to Start Dhikr Notifications on login add this line at the end of .bashrc
    if [ -z "$DHIKR_STARTED" ] && [ -n "$DISPLAY" ]; then
        export DHIKR_STARTED=1
        ( ~/.scripts/adkar.sh) &
    fi
    ```
source ~/.bashrc
```
