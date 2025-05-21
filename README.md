# .dotfiles

Welcome to my `.dotfiles` repository! This repo contains configuration files and scripts that I use to personalize and automate my development environment across different systems.

## Contents

- Shell configs (e.g., `.bashrc`, `.zshrc`)
- Editor settings (e.g., `.vimrc`, `.nvim`, `.emacs.d`)
- Git configuration (`.gitconfig`)
- Terminal multiplexer settings (e.g., `.tmux.conf`)
- Other tools and scripts

## Getting Started

To bring these dotfiles into your own system, you can clone this repository and symlink the desired files to your home directory. For example:

```sh
git clone https://github.com/th3gh0s8/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
# Use stow, GNU cp, or manually symlink files as needed
```

I recommend using [GNU Stow](https://www.gnu.org/software/stow/) for easy symlink management:

```sh
stow bash
stow vim
stow git
```

## Usage

- Review each config file before linking—some settings may be system- or user-specific.
- Feel free to fork and adapt for your own use!
- Scripts and configs are provided as-is; contributions and suggestions are welcome.

## Licensing

All content in this repository is licensed under the GNU General Public License v3.0 (GPLv3), unless otherwise noted in individual file headers.  
If you adapt or redistribute these files, please comply with the terms of the GPLv3.  
See the `LICENSE` file for the full license text and details.

## Credits

Inspired by dotfiles from many in the open source community.  
See individual file headers for specific attributions.

---

Happy hacking!  
– th3gh0s8
