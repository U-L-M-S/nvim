# Neovim from scratch

My Personal nvim config. It's a mix from [ChrisAtMachine](https://www.youtube.com/channel/UCS97tchJDq17Qms3cux8wcA) and [Neil Sabde](https://www.youtube.com/channel/UCIfWXqdiEvM8nBFAA594Kjw)

## Try out this config

Make sure to backup your current `nvim` directory

```
mv ~/.config/nvim ~/.config/nvim_old
```

**IMPORTANT** Requires [Neovim v0.6.0](https://github.com/neovim/neovim) or higher.

**!!! If you do NOT install `Neovim v0.6` or higher a serie of mistakes will happen !!!**
```
git clone https://github.com/U-L-M-S/nvim.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed 

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) 

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste


- On Ubuntu

  ```
  sudo apt install xsel
  ```

- On Arch Linux

  ```
  sudo pacman -S xsel
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```
  pip install pynvim
  ```

- Neovim node support

  ```
  npm i -g neovim
  ```
---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).


# nvim
my personal nvim. A personal mix of  ChrisAtMachine and Neil Sabde
