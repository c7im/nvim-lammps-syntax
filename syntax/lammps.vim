" Syntax highlighting for LAMMPS input scripts
if exists("b:current_syntax")
  finish
endif

syn keyword lammpsCommand run fix unfix compute variable region group
syn keyword lammpsCommand pair_style pair_coeff bond_style angle_style dihedral_style improper_style
syn keyword lammpsCommand timestep thermo dump restart read_data write_data velocity
syn keyword lammpsCommand minimize fix ave/time fix nvt fix nve fix npt

syn match lammpsComment "#.*$"
syn match lammpsNumber "\d\+"
syn match lammpsVariable "\${[^}]*}"

hi def link lammpsCommand Keyword
hi def link lammpsComment Comment
hi def link lammpsNumber Number
hi def link lammpsVariable Identifier

let b:current_syntax = "lammps"
