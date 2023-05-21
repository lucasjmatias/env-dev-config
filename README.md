# env-dev-config

Repository for backing up env config files

<p align="center">
  <img src="./img/robot-dev.jpg" />
</p>

# 💻 VIM

## Neovim

### 🏠 Env variable

For windows the NEOVIM_CONFIG must be set.

**💡 Example:**

```cmd
set NEOVIM_CONFIG=D:/Env/env-dev-config/vim
```

### 🛠️ vim/init.vim

Neovim init file, it's just redirecting the configuration to vim\.nvimrc

**🧰 Install:**

```bash
mkdir -p ~/AppData/local/nvim && \
cp ./vim/init.vim ~/AppData/local/nvim
```

### 🛠️ vim/.nvimrc

Neovim configuration, its configuration supports **neovim** and **VSCode Neovim** configuration.

> General vim configurations

### 🛠️ vim/after/plugin/keymaps.lua

Neovim keymaps.

> Remapping keys or commands configuration
