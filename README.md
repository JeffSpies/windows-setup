Windows 10 and 11 aren't so bad; hardware is cheaper and more innovative than Apple, you don't have to deal with the terrible Macbook keyboards/heating isssues, there's no tinkering with drivers, and now you get (fast) Docker, Linux, and Android within Windows. With that said, I'm maintaining my Mac/Unix keys as much as possible using Autohotkey (installed below and with the script included in this repository).

## Windows Software

### Chocolatey
Install chocolately in an administrative cmd.exe:

    @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

and then some immediately important apps

    (
    choco install autohotkey --yes
    choco install GoogleChrome --yes
    choco install git --yes
    choco install docker-desktop --yes
    choco install shutup10 --yes
    )
    
Run oosu10 (Shupup 10)right away. Then...
    
and some command-line tools
 
    (
    choco install adb --yes
    choco install curl --yes
    choco install fzf --yes
    choco install gnuwin --yes
    choco install iperf3 --yes
    choco install make --yes
    choco install nvm --yes
    choco install wget --yes
    )

and then some windows stuff

    (
    choco install 7zip --yes
    choco install aerozoom --yes
    choco install bleachbit --yes
    choco install chocolateygui --yes
    choco install cmder --yes
    choco install eartrumpet --yes
    choco install foxitreader --yes
    choco install itunes --yes
    choco install listary --yes
    choco install lockhunter --yes
    choco install peazip --yes
    choco install rufus --yes
    choco install screentogif --yes
    choco install searchwithmybrowser --yes
    choco install soundswitch --yes
    choco install vscode --yes
    choco install zoom --yes
    )

and some optional apps

    (
    choco install audacity --yes
    choco install dbeaver --yes
    choco install discord --yes
    choco install gimp --yes
    choco install handbrake --yes
    choco install kindle --yes
    choco install plexmediaserver --yes
    choco install python3 --yes
    choco install r.studio --yes
    choco install syncthing --yes
    choco install telegram --yes
    choco install veracrypt --yes
    choco install virtualbox --yes
    choco install vlc --yes
    choco install wireshark --yes
    )

some node apps (making sure you're still in an admin console)

     (
     nvm install latest
     nvm use latest
     npm install -g fkill
     )

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

### Install a distro

     (
     wsl --list --online
     wsl --install -d Ubuntu-20.04
     )

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
