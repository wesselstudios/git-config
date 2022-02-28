set -e

function install_homebrew_dependencies() {
  if ! which brew &>/dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi

  brew install --quiet --cask authy rectangle visual-studio-code spotify android-studio notion hyper || true
  brew install --quiet vim git nodenv rbenv jenv react-native-debugger || true
}

install_homebrew_dependencies
