
syntax keyword lammpsCommandGeneral run timestep units dimension boundary region lattice create_box create_atoms
syntax keyword lammpsCommandAtom atom_style group mass velocity minimize reset_timestep
syntax keyword lammpsCommandPair pair_style pair_coeff pair_modify
syntax keyword lammpsCommandFix fix unfix
syntax keyword lammpsCommandCompute compute variable equal label jump if then else
syntax keyword lammpsCommandIO read_data read_restart write_restart write_data dump undump log thermo thermo_style thermo_modify
syntax match lammpsComment "#.*"
syntax match lammpsNumber "\v[-+]?\d+(\.\d+)?([eE][-+]?\d+)?"
syntax match lammpsIdentifier "\v[a-zA-Z_][a-zA-Z0-9_]*"
hi def link lammpsCommandGeneral Statement
hi def link lammpsCommandAtom Type
hi def link lammpsCommandPair Keyword
hi def link lammpsCommandFix Function
hi def link lammpsCommandCompute Conditional
hi def link lammpsCommandIO PreProc
hi def link lammpsComment Comment
hi def link lammpsNumber Number
hi def link lammpsIdentifier Identifier
