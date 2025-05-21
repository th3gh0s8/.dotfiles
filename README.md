# .dotfiles – Qutebrowser Configurations

Welcome to the **qutebrowser** directory of my `.dotfiles` repository! This section contains my configuration files, scripts, and resources for [qutebrowser](https://qutebrowser.org/)—a keyboard-focused, minimal web browser.

## Contents

- `autoconfig.yml`  
  Automatically managed configuration settings by qutebrowser.
- `config.py`  
  Main user configuration file (custom keybindings, settings, styles, etc).
- `quickmarks`  
  List of quickmarks for rapid navigation.
- `bookmarks/`  
  Directory for bookmark files or scripts.
- `greasemonkey/`  
  User scripts for customizing website behavior.
- `qsettings/`  
  Additional qutebrowser settings or plugin resources.
- `solarized-everything-css/`  
  Custom CSS for website theming (e.g., Solarized theme).

_Note: The exact files and directories may vary based on your customization._

## Features

- Highly customized qutebrowser experience with keyboard-centric workflow
- Custom theming (e.g., Solarized) and user scripts for web enhancement
- Organized bookmarks and quickmarks for fast navigation
- Modular configuration for easy maintenance

## Getting Started

1. **Clone the repository:**
   ```sh
   git clone https://github.com/th3gh0s8/.dotfiles.git ~/.dotfiles
   ```

2. **Navigate to the qutebrowser configs:**
   ```sh
   cd ~/.dotfiles/qutebrowser
   ```

3. **Symlink configuration files to your qutebrowser config directory:**
   ```sh
   mkdir -p ~/.config/qutebrowser
   ln -s ~/.dotfiles/qutebrowser/* ~/.config/qutebrowser/
   ```

4. **Restart or launch qutebrowser** to use your new configuration.

5. **Customize:**  
   Edit `config.py`, user scripts, and other resources to match your browsing habits.

## Requirements

- [qutebrowser](https://qutebrowser.org/) (latest version recommended)
- Python (for config and scripts)
- Optional: Additional tools for userscripts or CSS customization

## Licensing

All configuration files and scripts in this directory are released under the GNU General Public License v3.0 (GPLv3) unless otherwise specified in the file headers.  
See the `LICENSE` file for details and comply with the GPLv3 if you share or modify these files.

## Credits

Inspired by the qutebrowser community and various open-source dotfiles.  
See individual file headers for specific attributions.

---

Happy browsing with qutebrowser!  
– th3gh0s8
