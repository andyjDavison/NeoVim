# NeoVim
## This is my fully functional NeoVim IDE Configuration!!!
Written in Lua, and portable on both Windows and Linux, it offers:
- File Tree Navigation System
- Integrated Bash terminal (can open multiple terminals in the same neovim instance)
- Syntax Highlighting
- Code Completion/Tab Completion (HTML/CSS, JavaScript, TypeScript, Java, Python, C/C++, Bash)
- Linting and error checking
- Buffer Windows/Tabs
- Ability to use system clipboard to copy/paste from outside nvim environment

## Plugins!!
To install the plugins I use ![vim-plug](https://github.com/junegunn/vim-plug). To set this up on your machine follow the instructions on the repo.

## Fonts
All of the fonts I use for this terminal are from ![NerdFonts](https://www.nerdfonts.com/font-downloads). You must have a font installed to be able to see the Icons for this IDE.

## Code Completion
The Code completion comes with a few preset languagues, but any can be added and removed. The languages are:
- ![C/C++](https://github.com/regen100/cmake-language-server)
- ![Java](https://github.com/georgewfraser/java-language-server)
- ![Python](https://github.com/microsoft/pyright)
- ![JavaScript (including JSX)](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#eslint)
- ![TypeScript (including TSX)](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#ts_ls)
- ![HTML/CSS](https://github.com/hrsh7th/vscode-langservers-extracted)
- ![Bash](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#bashls)  
  
To Install these Language Servers I use the ![neovim/nvim-lsp](https://github.com/neovim/nvim-lspconfig) plugin. For each language you have to install the Language Server onto your own machine, all information on installing these servers is available ![here](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md).

## Basic Layout
![alt](img/nvim.png)

## C++ Tab Completion
![alt](img/cpp.png)

## Java Tab Completion
![alt](img/java.png)

## C Tab Completion
![alt](img/c.png)

## Python Tab Completion
![alt](img/py.png)

## JavaScript Tab Completion
![alt](img/js.png)

## HTML/CSS Tab Completion
![alt](img/html.png)

## Bash Tab Completion
![alt](img/bash.png)
