# .dotfiles – Hyperland Configurations

Welcome to the **Hyperland** directory of my `.dotfiles` repository! This section contains my configuration files for the [Hyperland](https://github.com/hyperlandwm/Hyperland) Wayland compositor and related tools, tailored for an efficient, aesthetic, and highly customized Linux desktop experience.

## Contents

- `hypr/`  
  Core Hyperland configuration files:
  - `hyprland.conf`: Main Hyperland config
  - `hypridle.conf`: Idle settings
  - `hyprlock.conf`: Lock screen
  - `hyprpaper.conf`: Wallpaper settings
  - `mocha.conf`: Theme/appearance settings

- `hyprpanel/`  
  Configuration and module settings for [HyprPanel](https://github.com/Jas-SinghFSU/HyprPanel)  
  (For installation, follow the guide):
  - `config.json`, `modules.json`, `modules.scss`, etc.

- `rofi/`  
  Rofi launcher themes and configuration:
  - `config.rasi`, `catppuccin-mocha.rasi`

- `waybar/`  
  Waybar status bar configurations and themes:
  - `config.jsonc`, `mocha.css`, `modules.json`, `style.css`
  - `stile1/`: Alternate style folder with its own configs and scripts

- `wofi/`  
  Wofi application launcher configuration and styles:
  - `config.rasi`, `style.css`

_Note: The exact files and directories may vary based on your customization._

## Key Bindings

| Key Combination                                      | Description                                      |
|------------------------------------------------------|--------------------------------------------------|
| <kbd>Super</kbd> + <kbd>Enter</kbd>                  | Open a terminal (Ghostty)                        |
| <kbd>Super</kbd> + <kbd>c</kbd>                      | Close focused window                             |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>q</kbd>   | Exit Hyperland                                   |
| <kbd>Super</kbd> + <kbd>Space</kbd>                  | Open rofi                                        |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>Space</kbd>| Opens emoji selector                             |
| <kbd>Super</kbd> + <kbd>b</kbd>                      | Open web browser (Qutebrowser)                   |
| <kbd>Super</kbd> + <kbd>e</kbd>                      | Open file manager (Thunar/PCManFm)               |
| <kbd>Print</kbd>                                     | Screenshot a window                              |
| <kbd>Shift</kbd> + <kbd>Print</kbd>                  | Screenshot a region                              |
| <kbd>Super</kbd> + <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd> | Move through windows                   |
| <kbd>Super</kbd> + <kbd>0</kbd> ... <kbd>9</kbd>     | Move to workspaces                               |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>0</kbd> ... <kbd>9</kbd>  | Move current window to workspace                 |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>l</kbd>   | Lock the screen                                  |

## Features

- Modular configuration for easy customization and maintenance
- Thoughtful keybindings for productivity
- Autostart of essential applications and services
- Theming for a cohesive and attractive desktop (Catppuccin Mocha, etc.)
- Custom scripts and alternate styles for Waybar and Hyprpanel

## Getting Started

1. **Clone the repository:**
   ```sh
   git clone https://github.com/th3gh0s8/.dotfiles.git ~/.dotfiles
   ```

2. **Navigate to the Hyperland configs:**
   ```sh
   cd ~/.dotfiles
   ```

3. **Symlink configuration files to your system config:**
   ```sh
   mkdir -p ~/.config/hypr ~/.config/waybar ~/.config/rofi ~/.config/wofi ~/.config/hyprpanel
   ln -s ~/.dotfiles/hypr/* ~/.config/hypr/
   ln -s ~/.dotfiles/waybar/* ~/.config/waybar/
   ln -s ~/.dotfiles/rofi/* ~/.config/rofi/
   ln -s ~/.dotfiles/wofi/* ~/.config/wofi/
   ln -s ~/.dotfiles/hyprpanel/* ~/.config/hyprpanel/
   ```

   > **Note:** For [HyprPanel](https://github.com/Jas-SinghFSU/HyprPanel), please follow the installation guide provided in its repository.

4. **Restart Hyperland** to apply your new configuration.

5. **Customize:**  
   Edit the configuration files to match your system, installed applications, and workflow preferences.

## Requirements

- [Hyperland](https://github.com/hyperlandwm/Hyperland) compositor
- Compatible Linux distribution
- Additional tools: waybar, rofi, wofi, [HyprPanel](https://github.com/Jas-SinghFSU/HyprPanel), swaylock, etc. for full desktop experience

## Licensing

All configuration files and scripts in this directory are released under the GNU General Public License v3.0 (GPLv3) unless otherwise specified in the file headers.  
See the `LICENSE` file for details and comply with the GPLv3 if you share or modify these files.

## Credits

Inspired by the Hyperland community and various open-source dotfiles.  
See individual file headers for specific attributions.

---

Enjoy your Hyperland experience!  
– th3gh0s8
