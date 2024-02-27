#!/bin/zsh

# ---------- CLEANUP ----------

# TODO: this block might be deleted!

# rm -rf "$HOME/.oh-my-zsh"
# rm -rf "$HOME/.nvm"
# rm -rf "$HOME/powerlevel10k"
# rm "$HOME/.zshrc"
# rm "$HOME/.p10k.zsh"
# rm "$HOME/.gitconfig"
# rm "$HOME/.gitignore_global"
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

# ---------- DIRECTORIES ----------

mkdir "$HOME/workspace"
mkdir ~/.nvm

# ---------- SHELL ----------

# Set Zsh as the default shell
if [[ "$(echo $SHELL)" != "/bin/zsh" ]]; then
    echo "Setting Zsh as the default shell..."
    chsh -s $(which zsh)
    echo "Zsh is now the default shell."
else
    echo "Zsh is already the default shell."
fi

# ---------- HOMEBREW ----------

export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> "$HOME/.zprofile"
eval "$(/opt/homebrew/bin/brew shellenv)"

# ---------- GIT ----------

brew install git
cp git/.gitconfig "$HOME/.gitconfig"
cp git/.gitignore_global "$HOME/.gitignore_global"

# ---------- GIT CLIENT ----------

brew install --cask github

# ---------- TERMINAL ----------

brew install --cask iterm2
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

cp zsh/.zshrc ~/.zshrc
cp powerlevel10k/.p10k.zsh ~/.p10k.zsh

# ---------- NVM & NODE.JS ----------

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
source ~/.zshrc
source ~/.nvm/nvm.sh

preferred_node_version=20.11.1

nvm install "$preferred_node_version"

# ---------- OTHER PACKAGE MANAGERS ----------

# yarn
npm install -g yarn

# pnpm
npm install -g pnpm

# bun
npm install -g bun

# ---------- IDEs ----------

brew install --cask visual-studio-code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
code --install-extension continue.continue
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension esbenp.prettier-vscode
code --install-extension sonarsource.sonarlint-vscode
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension eamodio.gitlens
code --install-extension robbowen.synthwave-vscode
code --install-extension sabrsorensen.synthwave-blues
code --install-extension pkief.material-icon-theme
cp "./vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

brew install --cask webstorm
# TODO: Create dotfiles for webstorm!

# ---------- LLM ----------

brew install --cask lm-studio

# ---------- BROWSERS ----------

brew install --cask arc
brew install --cask google-chrome
# TODO: Temporarly disable Edge installation, as it is freezing
# brew install --cask microsoft-edge
brew install --cask firefox
brew install --cask opera
brew install --cask brave-browser

npm install -g @georgesg/arc-cli

icloud_passwords_chrome_extension_url="https://chromewebstore.google.com/detail/icloud-jelszavak/pejdijmoenmkgeppbflobdenhhabjlaj"
arc-cli new-little-arc "$icloud_passwords_chrome_extension_url"

# ---------- DOCKER ----------

brew install docker

docker_desktop_download_url="https://www.docker.com/products/docker-desktop/"
arc-cli new-little-arc "$docker_desktop_download_url"

# ---------- COMMUNICATION ----------

brew install --cask slack
brew install --cask discord
brew install --cask microsoft-teams

# ---------- DESIGN ----------

brew install --cask figma

# ---------- PRODUCTIVITY ----------

brew install --cask notion

one_menu_download_url="https://www.withmarko.com/one-menu"
arc-cli new-little-arc "$one_menu_download_url"

# ---------- MISC ----------

brew install --cask intune-company-portal