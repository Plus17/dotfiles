# Dotfiles

## Requirements

```bash
brew install stow asdf zsh ripgrep
brew install --cask alacritty
```

- [Installing ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#how-to-install-zsh-on-many-platforms)

## Oh-My-Zsh

[oh-my-zsh](https://ohmyz.sh/):

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Alacritty

### Theme

```bash
curl -LO --output-dir ~/.config/alacritty https://github.com/catppuccin/alacritty/raw/main/catppuccin-mocha.toml
```

### Fonts

  Install Fira Code font.

- MacOs:

  ```bash
  brew tap homebrew/cask-fonts
  brew install --cask font-fira-code
  ```

- Linux (Ubuntu based):

  ```bash
  sudo apt install fonts-firacode
  ```

## Tmux

- Plugin management with [tpm](https://github.com/tmux-plugins/tpm)

  ```bash
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ```
