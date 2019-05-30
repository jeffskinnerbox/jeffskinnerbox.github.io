Title: CheatSheet: Python-Mode Commands
Slug: cheatsheet-python-mode-commands
Status: hidden

## Command
| Python-Mode Command | Action |
|:----:|:------| 
| :Pydoc <args> | Show python documentation |
| PyLintToggle | Enable, disable pylint |
| PyLintCheckerToggle | Toggle code checker (pylint, pyflakes) |
| PyLint | Check current buffer |
| PyLintAuto | Automatic fix PEP8 errors |
| Pyrun | Run current buffer in python |

## Python Mode Keys
| Python-Mode Command | Action |
|:----:|:------| 
| K | Show python docs for current word under cursor |
| C-Space | Rope code assist |
| <leader>r | Run current buffer |
| <leader>b | Set breakpoints |
| [[ | Jump to previous class or function (normal, visual, operator modes) |
| ]] | Jump to next class or function  (normal, visual, operator modes) |
| [M | Jump to previous class or method (normal, visual, operator modes) |
| ]M | Jump to next class or method (normal, visual, operator modes) |
| aC C | "Operation with a class.  Example: vaC, daC, dC, yaC, yC, caC, cC (normal, operator modes)" |
| iC | "Operation with inner class.  Example: viC, diC, yiC, ciC (normal, operator modes)" |
| aM M | "Operation with function or method.  Example: vaM, daM, dM, yaM, yM, caM, cM (normal, operator modes)" |
| iM | "Operation with inner function or method.  Example: viM, diM, yiM, ciM (normal, operator modes)" |

## Python Motions
| Python-Mode Command | Action |
|:----:|:------| 
| [[ | Jump to previous class or function (normal, visual, operator modes) |
| ]] | Jump to next class or function  (normal, visual, operator modes) |
| [M | Jump to previous class or method (normal, visual, operator modes) |
| ]M | Jump to next class or method (normal, visual, operator modes) |
| aC | Select a class. Example: vaC, daC, yaC, caC (normal, operator modes) |
| iC | Select inner class. Example: viC, diC, yiC, ciC (normal, operator modes) |
| aM | Select a function or method. Example: vaM, daM, yaM, caM (normal, operator modes) |
| iM | Select inner function or method. Example: viM, diM, yiM, ciM (normal, operator modes) |

## Sources
* [Vim python-mode](https://github.com/klen/python-mode)

## Requires More Research
* [check out Jedi for auto completion](https://github.com/davidhalter/jedi-vim)
