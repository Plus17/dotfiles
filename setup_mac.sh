# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install from Brewfile
brew bundle --file=Brewfile

# Stow dotfiles
stow .

# Use Mise to install Ruby & Elixir
mise use --global ruby@3.3
mise x ruby -- gem install rails --no-document
mise use --global erlang@latest
mise use --global elixir@latest
mise x elixir -- mix local.hex --force
