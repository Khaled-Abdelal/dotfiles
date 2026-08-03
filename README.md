# dotfiles

chezmoi-managed dotfiles: fish, starship, tmux, herdr.

## New machine

```sh
# 1. install chezmoi (https://www.chezmoi.io/install/) + git
# 2. clone and apply in one shot:
chezmoi init --apply https://github.com/Khaled-Abdelal/dotfiles.git

# 3. runtime tools
# tmux (tpm plugin manager; run `prefix + I` once inside tmux)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# herdr + sessionizer + agent integrations
curl -fsSL https://herdr.dev/install.sh | sh
herdr plugin install salkhalil/herdr-sessionizer
herdr integration install opencode
herdr integration install cursor

# other: fish, starship, zoxide, mise, fzf (>= 0.45), jq, cargo, pulumi
```

## Daily workflow

```sh
chezmoi cd            # edit dotfiles (source repo lives in ~/.local/share/chezmoi)
chezmoi diff          # review pending changes
chezmoi status        # list changed/untracked targets
chezmoi apply         # apply to $HOME
chezmoi add ~/file    # start managing a new file
chezmoi git add -A && chezmoi git commit -m "..." && chezmoi git push
```
