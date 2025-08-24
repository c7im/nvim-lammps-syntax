
# nvim-lammps-syntax (розширена версія)

Плагін для Neovim з підтримкою LAMMPS input scripts (.in, .lmp).

## Функції
- Підсвітка команд LAMMPS по категоріях
- Числа, змінні, коментарі
- Автокомпліт через nvim-cmp
- Folding для великих скриптів

## Встановлення
### Packer
```lua
use 'c7im/nvim-lammps-syntax'
```
### Lazy
```lua
{ 'c7im/nvim-lammps-syntax', ft = 'lammps' }
```

## Інтеграція з nvim-cmp
```lua
local cmp = require('cmp')
cmp.setup.filetype('lammps', { sources = cmp.config.sources({ { name = 'lammps' } }) })
cmp.register_source('lammps', require('lammps.cmp'))
```
