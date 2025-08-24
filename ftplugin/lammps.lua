
vim.cmd [[
  augroup lammps_detect
    autocmd!
    autocmd BufRead,BufNewFile *.in,*.lmp set filetype=lammps
  augroup END
]]
vim.opt.foldmethod = 'syntax'
