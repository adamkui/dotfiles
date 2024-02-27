# Installation

## Goal

The goal of this repository is to provide a useful set of dotfiles, configs and installations 
scripts for fullstack web development. I set this repo as public, as I believe this might help others too.

## Getting started

1. Clone or download repository

```shell
git clone https://github.com/adamkui/dotfiles.git
```

2. Move to directory

```shell
cd dotfiles
```

3. Make the installation script executable

```shell
chmod +x install.sh
```

4. Run the installation script

```shell
sudo ./install.sh
```

## Test cases for expected results

1. The .nvm folder exists.
2. The workspace folder exists.
3. Running echo $SHELL returns /bin/zsh.
4. The brew command works.
5. The git -v command works.
6. The .gitconfig and .gitignore_global files are copied.
7. GitHub Desktop app is installed.
8. iTerm2 is installed.
9. Terminal autosuggestions and syntax-highlighting plugins are working.
10. Powerlevel10k config was loaded automatically.
11. Terminal appearance is as expected.
12. The nvm -v command works.
13. The npm -v command works.
14. The pnpm -v command works.
15. The node -v command works and returns version 20.11.1.
16. The yarn -v command works.
17. The bun -v command works.
18. VS Code is installed with configured plugins.
19. VS Code themes are set.
20. Webstorm IDE is installed.
21. The following applications are installed:
    - Arc
    - Chrome
    - Edge
    - Firefox
    - Opera
    - LM studio
    - Docker
    - Slack
    - Discord
    - Microsoft Teams
    - Figma
    - Notion
    - Intune company portal
22. In Arc, the Docker Desktop download page opens.
23. In Arc, the iCloud Passwords Chrome extension download page opens.

## Manual work to do after running the script

- Set Arc as default browser
- Install the iCloud Passwords Chrome extension
- Download and install Docker desktop application
- Import config files from iterm2 folder in the iTerm application
