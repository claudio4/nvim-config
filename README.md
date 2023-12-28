# Neovim config

Hello, this is my personal neovim configuration. It is tailored to Go, Rust and web development as it is what I do the most,
I use the excellent Lazy plugin manager to defer the load of as many plugins as I can.
Most of the configurations are in the [plugins folder](lua/plugins), while all the mappings are in the [mappings.lua](lua/mappings.lua) file.

### External dependencies

Some plugins have external dependencies, although a lot of then are handle through [Mason](lua/plugins/mason.lua), there are a few that need to be manually installed before using this config. Such programs are:

- git
- make
- gcc/clang

You can quickly install everything you need with the following:

```bash
# In openSUSE distros
sudo zypper in +pattern:devel_basis +pattern:devel_C_C++ git
# In Debian-based distros
sudo apt install build-essential git
```

### Install

Once you have installed the necessary external dependencies installing this configuration is as easy as doing

```bash
git clone https://github.com/claudio4/nvim-config.git ~/.config/nvim
```

Once you open neovim, lazy should get to work installing all the necessary plugins. Once it has finished you should execute the next vim command

```
:MasonToolsUpdate
```

That's all! Happy coding.
