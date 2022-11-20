Windows 10 and 11 aren't so bad; hardware is cheaper and more innovative than Apple, you don't have to deal with the terrible Macbook keyboards/heating isssues, there's no tinkering with drivers, and now you get (fast) Docker, Linux, and Android within Windows. With that said, I'm maintaining my Mac/Unix keys as much as possible using Autohotkey (installed below and with the script included in this repository).

## Windows Software

### Chocolatey
Install chocolately in an administrative cmd.exe:

    @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

and then some immediately important apps

    choco install autohotkey
    choco install GoogleChrome
    choco install git
    choco install docker-desktop
    
and some command-line tools
 
    choco install adb
    choco install curl
    choco install fzf
    choco install gnuwin
    choco install iperf3
    choco install make
    choco install nvm
    choco install wget

and then some windows stuff

    choco install aerozoom
    choco install chocolateygui
    choco install cmder
    choco install eartrumpet
    choco install foxitreader
    choco install itunes
    choco install listary
    choco install lockhunter
    choco install peazip
    choco install rufus
    choco install screentogif
    choco install searchwithmybrowser
    choco install vscode
    choco install zoom

and some optional apps

    choco install audacity
    choco install dbeaver
    choco install discord
    choco install gimp
    choco install handbrake
    choco install kindle
    choco install plexmediaserver
    choco install python3
    choco install r.studio
    choco install syncthing
    choco install telegram
    choco install virtualbox
    choco install vlc
    choco install wireshark

afterwards
     - `puttygen.exe`: Generate, move mouse, save keys to `%USERPROFILE%\_ssh` (e.g., github.ppk) and export OpenSSH format to %USERPROFILE%\.ssh\id_rsa

### Winget
Some things work better or are only on winget. Otherwise choco is preferred.

    winget install --id=Microsoft.Poweroys -e
    winget install --id=AdGuard.AdGuard -e 

### Backup
- [Backblaze](https://secure.backblaze.com/r/01qxpi) - My preferred external backup service
- pip3 install icloudpd
  - icloud --username=icloud@email.address
  - icloudpd.exe --username icloud@email.address -d C:\BackupFolderPath\ --until-found 200

### Key Mapping Configs
1. TODO

### Other Settings
1. Turn off sticky keys.

## Linux via WSL2

The first thing we're going to do is install and configure Windows Subsystem for Linux. This puts the power of Linux besides Windows.

### Install

### WSL2

     wsl --list --online
     wsl --install -d Ubuntu-20.04

1. I'd run the following line in a WSL terminal:

    git config --global core.autocrlf true
    
1. WSL 1 has a known issue when using Visual Code. Change `remote.WSL.fileWatcher.polling` to true (or in the GUI, check the box)

### Update packages
1. `sudo apt-get update`
1. `suod apt-get upgrade`

### git/GitHub

1. `git config --global user.email code@example.com` # I use something generic across version-control sites
1. `git config --global user.name "Your Name"`
1. `ssh-keygen -t ed25519 -C "code@example.com"`
1. Add your key to GitHub settings.

### tmux
- I've [replaced VS-Code terminals](https://medium.com/@joaomoreno/persistent-terminal-sessions-in-vs-code-8fc469ed6b41) with tmux by using a comment on that post; added the following to your settings.json:
````json
"terminal.integrated.shell.linux": "bash",
"terminal.integrated.shellArgs.linux": ["-c", "SESSION=${PWD#${PWD%/*/*}/}; tmux new-window -t $SESSION; tmux new-session -A -D -s $SESSION"]
````
- https://github.com/tmux-plugins/tmux-resurrect
- https://github.com/tmux-plugins/tmux-continuum
- https://github.com/tmux-plugins/tmux-yank

### Node

In WSL, follow the instructions [here](https://github.com/nvm-sh/nvm) to install node via the nvm package manager.
````bash
nvm install node 
nvm use node
nvm install-latest-npm
npm -g install yarn
````

### Python

Using the Linux guides

- https://github.com/pyenv/pyenv
- https://github.com/pyenv/pyenv-virtualenv
- `pyenv global 3.8.3` (or whatever is your latest by `pyenv install --list`)

### Jupyter Lab/Notebook with Typescript & JavaScript support
- `pyenv virtualenv jupyter`
- `pyenv activate jupyter`
- https://jupyter.org/install.html
- `cd $WHEREVER_YOU_WANT_NOTEBOOKS_STORED`
- `yarn init`
- `yarn add lodash` or whatever packages you want
- `jupyter lab`
