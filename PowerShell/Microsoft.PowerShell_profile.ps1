# initalizing Starship Prompt
Invoke-Expression (&starship init powershell)
Set-Alias lvim 'C:\Users\chamu\.local\bin\lvim.ps1'

# OpenHands CLI aliases
function openhands { uvx --python 3.12 --from openhands-ai openhands $args }
function oh { uvx --python 3.12 --from openhands-ai openhands $args }

# Color Scripts
Show-ColorScript

# initalizing Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })


# Aliases

function .. { Set-Location .. }

# ls → eza -al
function ls { eza -al --color=always --group-directories-first --icons }

# lsz → eza -al with total size
function lsz { eza -al --color=always --total-size --group-directories-first --icons }

# la → eza -a
function la { eza -a --color=always --group-directories-first --icons }

# ll → long format
function ll { eza -l --color=always --group-directories-first --icons }

# lt → tree view
function lt { eza -aT --color=always --group-directories-first --icons }

# l. → dotfiles only
function l. { eza -ald --color=always --group-directories-first --icons .* }

# cd -> zoxide
function cd {z}

# function zvim {neovide @args}
