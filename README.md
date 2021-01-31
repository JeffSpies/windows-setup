Windows isn't so bad; hardware is cheaper and more innovative than Apple, you don't have to deal with the terrible Macbook keyboards/heating isssues, there's no tinkering with drivers, and now you get (fast) Docker and Linux within Windows to boot. However, I'm maintaining my Mac/Unix keys as much as possible. My setup is below.

## Linux via WSL2

The first thing we're going to do is install and configure Windows Subsystem for Linux. This puts the power of Linux besides Windows.

### Install

1. Get Windows 10 Pro--you can find cheap, legal keys on auction and other key distribution sites. This way you can run Docker for Windows as Docker running is WSL is near-impossible; don't go down that path until it's officially supported in WSL.

1. Configure Windows 10 to run Windows Subsystem for Linux:

    https://docs.microsoft.com/en-us/windows/wsl/install-win10

1. In the Microsoft Store, install the free WSL [Ubuntu 18.04 LTS](https://www.microsoft.com/store/apps/9N9TNGVNDL3Q) (or your preferred flavor/version). The following steps assume you're using Ubuntu.

1. Install Docker for Windows:

    https://hub.docker.com/editions/community/docker-ce-desktop-windows/

1. Open Ubuntu from the Start Menu and install Docker:

    https://docs.docker.com/engine/install/ubuntu/

1. This makes WSL use Windows' Docker. You just insalled Docker, so ignore the first section, then follow the other steps, including properly setting the path and metadata in wsl.conf.

    https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly

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

## Windows Software

Now that WSL2 is installed

### Tools
I use Choclatey to install most things, making it easy to update across machines.
- [Chocolatey](https://chocolatey.org/)
    - `choco install git`
    - `choco install putty`
        - `puttygen.exe`: Generate, move mouse, save keys to `%USERPROFILE%\_ssh` (e.g., github.ppk) and export OpenSSH format to %USERPROFILE%\.ssh\id_rsa
    - Chocolatey GUI
    - Chocolatey Package List Backup to Local and Cloud
    - SharpKeys
    - Python
    - Python 3.x
    - Don't Sleep
    - SearchWithMyBrowser
    - EarTrumpet - Individual volume controls for every application
    - [Quicklook](https://pooi.moe/QuickLook/) - [Open source](https://github.com/QL-Win/QuickLook) clone of Mac's quick look. An alternative to [Seer](http://1218.io/). 
    - Discord - My preferred chat app
    - Telegram - My preferred messaging app
    - Zoom Client for Meetings
    - [Keypirinha](http://keypirinha.com/) - An [openly extensible](https://github.com/Keypirinha) launcher. I think I like it better than [Wox](http://www.wox.one/).
    - [ShareX](https://getsharex.com/) - Better screenshots; free and [open source](https://github.com/ShareX/ShareX)
    - [Listary](https://www.listary.com/) - Very handy search utility integrated with Explorer.
    - [Everything](https://www.voidtools.com/) - Quick file indexing; nice integration with Keypirinha.
    - LockHunter
    - PowerToys
    - [VLC](https://www.videolan.org/) - Free, [open source](https://code.videolan.org/explore/projects/starred) media player
    - I'll make my whole list available easily, but also 7-Zip, Acrobat, etc.
### Backup
- [Backblaze](https://secure.backblaze.com/r/01qxpi) - My preferred external backup service
- pip3 install icloudpd
  - icloud --username=icloud@email.address
  - icloudpd.exe --username icloud@email.address -d C:\BackupFolderPath\ --until-found 200
## Key Mapping Configs
1. TODO


