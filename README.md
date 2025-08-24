# nvim-lammps-syntax

Syntax highlighting and completion for [LAMMPS](https://lammps.sandia.gov) input scripts in Neovim.

## Installation

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "c7im/nvim-lammps-syntax",
  config = function()
    -- nothing special required
  end
}
```

With [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use "c7im/nvim-lammps-syntax"
```

## Features
- Syntax highlighting (`syntax/lammps.vim`)
- File detection (`*.in`, `*.lmp` → `lammps`)
- Autocompletion source for `nvim-cmp`

## License
MIT
