My personal neovim configuration for angular made for windows.

![welcome image](https://github.com/Jerinjosea/Neovim-angular/blob/9821ef3a8244e0157b6393b0382526453826aedc/Welcome%20image.jpg)

## Features

- Auto completion
- Syntax highlighting
- Error reporting and auto fix
- Snippets
- Easy vertical and horizontal splits

## Neovim windows setup
1. Install neovim from here https://neovim.io/
2. Clone this repo to  *C:\Users\jerin\AppData\Local\nvim*
3. Ensure node.js is installed and npm is accessible.
4. Install gcc compiler (I recommend MYSYS2 method).
5. Install fzf from [junegunn/fzf: :cherry_blossom: A command-line fuzzy finder](https://github.com/junegunn/fzf?tab=readme-ov-file#windows-packages)
6. Install fd from https://github.com/sharkdp/fd?tab=readme-ov-file#on-windows
7. Open neovim in terminal using command nvim. Now all dependencies will be auto installed.

> NOTE: All language servers should be auto installed. But some have issues like angular-ls. Please add them as dev dependencies in to your projects package.json file

## Keymaps

| Category            | KeyMap     | Action                      |  
| ------------------- | ---------- | --------------------------- |  
| **Fuzzy Find**      | Ctrl + p   | Search and open files       |  
|                     | Space + b  | Open recent files           |  
|                     | Space + /  | Find All                    |  
|                     | g + r      | Find all references         |  
| **Files structure** | Space + ee | Open file tree (left panel) |  
|                     | Space + ef | Focus on file               | 
|                     | Space + ec | Collapse left panel         |
|                     | Space + er | Refresh                     |  
|                     | a          | New file or folder          |  
| **Quick Short Cuts**| Ctrl + o   | Go back                     |  
|                     | Ctrl + i   | Go forward                  |  
|                     | gc         | Comment lines               | 
|                     | u          | Undo                        | 
|                     | Ctrl + r   | Redo                        |   
|                     | yy         | Copy whole line             |
|                     | Shift + q  | Quit                        |  
|                     | Space + s  | Save                        | 
|                     | Space + fc | Full screen for open window | 
|                     | Space + mp | Format                      |  
| **LSP**             | Shift + k  | Show info                   |  
|                     | Space + d  | Show error info             | 
|                     | g + f      | Show code actions           |  
|                     | g + d      | Go to definition            |  
|                     | Space + rn | Smart rename variable       |
|**Splits**           | ss         | Horizontal split            |  
|                     | vv         | Vertical split              | 
|                     | Ctrl + h   | Jump Left                   |  
|                     | Ctrl + l   | Jump Right                  |
|                     | Ctrl + j   | Jump Down                   |  
|                     | Ctrl + k   | Jump Up                     |

> Note: 
> I have installed which key plugin that will guide you through keymaps. <br>
> You can find more keymaps for File explorer [here](https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt#L150).

## Known issues
1. nvim-tree/nvim-web-devicons is not working
2. Need to add angular-ls package to package.json of your project as a dev dependency.

## References
- [Neovim Complete Setup - Setting up Neovim From Scratch](https://www.youtube.com/watch?v=uD-vSrtZ8uQ) by Monsterlessons Academy
- [Vim Motions for absolute beginners!!!](https://www.youtube.com/watch?v=lWTzqPfy1gE) by Dispatch