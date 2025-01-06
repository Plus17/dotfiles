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

## Wezterm

- keybindings
  ```bash
  SUPER	r	ReloadConfiguration
  SUPER+SHIFT	[	ActivateTabRelative=-1
  SUPER+SHIFT	]	ActivateTabRelative=1
  
  CTRL+SHIFT	X	ActivateCopyMode
  y	CopyExitCopyMode
  CTRL+SHIFT	X	ActivateCopyMode

  CTRL+SHIFT	Z	ActivateQuickSelectMode

  CTRL+SHIFT+ALT	"	SplitVertical={domain="CurrentPaneDomain"}
  CTRL+SHIFT+ALT	%	SplitHorizontal={domain="CurrentPaneDomain"}

  CTRL+SHIFT	LeftArrow	ActivatePaneDirection="Left"
  CTRL+SHIFT	RightArrow	ActivatePaneDirection="Right"
  ```

## Tmux

- Plugin management with [tpm](https://github.com/tmux-plugins/tpm)

  ```bash
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ```

- Keybindings:
 
  Mainly provided by tmux sensible plugin.

  ```bash
  # prefix `
  # prefix2 C-g
  ALT + h previous-window
  ALT + l next-window

  prefix + h select-pane -L
  prefix + l select-pane -R
  ```
