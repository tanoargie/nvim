# My Neovim configuration

This is my neovim configuration file. It uses COC for completion and has plugins for most of the languages and frameworks these days like React, Typescript, Vue, Angular, Nginx, NodeJS, HTML, CSS, Python, Ruby, Rails, Django, C++, Flutter and even CSS frameworks like TailwindCSS!

### Prerequisites

- Nvim >= 4.4
- NodeJS >= 12
- Ripgrep
- Python 3 (**OPTIONAL**: for healthproviders)
- Ruby >= 3.0.0 (**OPTIONAL**: for healthproviders)
- Solargraph (**OPTIONAL**: to work with coc-solargraph. You should be able to install it with the following command: `gem install solargraph`)
- Clangd (**OPTIONAL**: to work with coc-clangd. You should be able to install it with the following commands: `sudo apt-get install clangd-9` (ubuntu) or `brew install llvm` (mac). Remember to add clangd to your path)./opt/llvm/bin

### Installation

1. Make `.config` directory if not already made and access it.

```
mkdir ~/.config && cd ~/.config
```

2. Clone this repository

```
git clone git@github.com:francoserio/nvim.git
```

3. Enter newly created folder and open it.

```
cd nvim && nvim .
```

4. Install Plugins.

```
:PlugInstall
```

5. Enjoy!
