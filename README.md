Windows isn't so bad. I'm maintaining my Mac/Unix keys as much as possible. I'll provide my config/tools here.

## Software

- Visual Studio Code
- Source Tree
- Discord
- Telegram
- Docker
- AutoHotKey
- SharpKeys
- Backblaze
- ShareX

## Key Mapping Configs

1. TODO

## Linux

1. Get Windows 10 Pro--you can find cheap, legal keys on auction and other key distribution sites. This way you can run Docker for Windows as Docker running is WSL is near-impossible; don't go down that path until it's officially supported in WSL.

1. Configure Windows 10 to run Windows Subsystem for Linux:

    https://docs.microsoft.com/en-us/windows/wsl/install-win10

1. In the Microsoft Store, install the free WSL Ubuntu 18.04 LTS (or your preferred flavor/version). The following steps assume you're using Ubuntu.

1. Install Docker for Windows:

    https://hub.docker.com/editions/community/docker-ce-desktop-windows/

1. Open Ubuntu from the Start Menu and install Docker:

    https://docs.docker.com/engine/install/ubuntu/

1. This makes WSL use Windows' Docker. You just insalled Docker, so ignore the first section, then follow the other steps, including properly setting the path and metadata in wsl.conf.

    https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly

1. I'd run the following line in a WSL terminal:

    git config --global core.autocrlf true
