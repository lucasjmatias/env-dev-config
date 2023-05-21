# env-dev-config

Repository for backing up env config files

# VIM

## Neovim

### Env variable

For windows the NEOVIM_CONFIG must be set.

**Example:**

```cmd
set NEOVIM_CONFIG=D:/Env/env-dev-config/vim
```

### init.vim

Neovim init file, it's just redirecting the configuration to vim\.nvimrc

**Install:**

```bash
mkdir -p ~/AppData/local/nvim && \
cp ./vim/init.vim ~/AppData/local/nvim
```

### .nvimrc

Neovim configuration, its configuration supports **neovim** and **VSCode Neovim** configuration.
