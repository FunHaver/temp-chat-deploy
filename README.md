# Temp Chat

This repository is here to contain the deployment of Temp Chat. The constituent parts are submodules and the main repository here contains installation scripts, system files, and configurations.

## Live Demo
To view a live demo, navigate to temp-chat.conortsullivan.net

## Installation

### System Requirements
* OS: Debian 12
* nodeJS 20
* npm 10
* systemd
* nginx 1.22.1 or later
* bash
* 512MB of RAM
* git

### Instructions

1. Ensure all system requirements are installed
2. git clone this repository
3. run the install.sh script with sudo
4. start the application using sudo systemctl start temp-chat-server.service

