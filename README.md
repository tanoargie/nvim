# My Neovim configuration

This is my neovim configuration file in Lua. It has code completion and has plugins for Javascript/Typescript!

### Prerequisites

- Nvim >= 0.11.0
- NodeJS >= 22
- Ripgrep
- Python 3
- Ruby >= 3.0.0 (**OPTIONAL**)
- Clangd (**OPTIONAL**. You should be able to install it with the following commands: `sudo apt-get install clangd-9` (ubuntu) or `brew install llvm` (mac). Remember to add clangd to your path)./opt/llvm/bin

### Installation

1. Make `.config` directory if not already made and access it.

```
mkdir ~/.config && cd ~/.config
```

2. Clone this repository

```
git clone git@github.com:tanoargie/nvim.git
```

3. Enter newly created folder and open it.

```
cd nvim && nvim .
```

4. Install Plugins.

```
:PackerInstall
```

5. Enjoy!
