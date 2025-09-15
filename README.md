# My Dotfiles - For MacOS
This is my dotfiles (wouldn't call it dotfiles) for my laptop. This is essentially just configuring zsh and zshrc easily because i am tired of Maanually configuring these (Especially VSCode Configurations)
---

## 1. Prerequisites

* macOS with **zsh installed** (default on modern macOS).
* **Git** installed (obviously).
* VS Code installed (optional, for settings).
* Have MacOS Developer Tools Installed

Check Git installation:

```bash
git --version
```

---

## 2. Backup (Optional but Recommended)

Before running the script, you may want to backup your current configs:

```bash
cp ~/.vimrc ~/.vimrc.backup
cp ~/.zshrc ~/.zshrc.backup
cp ~/Library/Application\ Support/Code/User/settings.json ~/settings.json.backup
```

---

## 2. Clone and Run the Setup Script

1. Open **Terminal**.
2. Run the following command to clone the repository and execute the setup script:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ItzzSadra/dotfiles/main/install.sh)"
```

This script will:

* Pull the latest dotfiles from GitHub.
* Copy `vimrc` to `~/.vimrc`.
* Copy `zshrc` to `~/.zshrc`.
* Copy `settings.json` to the VS Code default configuration folder.
* Install `JetBrains Mono` Font
* Source the `.zshrc` automatically.

---

## 4. Reload Zsh

After installation, reload your terminal or run:

```bash
source ~/.zshrc
```

This will apply your new configuration immediately.

---

## 5. Notes

* If you update your dotfiles on GitHub, just rerun the setup script to get the latest changes.
* You can customize `.vimrc` and `.zshrc` locally after installation.
* VS Code settings will overwrite any existing settings; consider backing up first.

---

Enjoy your pre-configured development environment!
