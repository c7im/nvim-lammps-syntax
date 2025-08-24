
local source = {}
local lammps_cmds = {
  "atom_style", "boundary", "create_atoms", "create_box",
  "compute", "fix", "unfix", "group", "lattice", "log",
  "mass", "minimize", "pair_style", "pair_coeff", "pair_modify",
  "read_data", "read_restart", "region", "reset_timestep", "run",
  "thermo", "thermo_style", "thermo_modify", "timestep",
  "units", "variable", "velocity", "write_data", "write_restart",
  "dump", "undump", "if", "then", "else", "label", "jump"
}
function source:complete(_, callback)
  local items = {}
  for _, cmd in ipairs(lammps_cmds) do
    table.insert(items, { label = cmd, kind = require('cmp').lsp.CompletionItemKind.Keyword })
  end
  callback({ items = items, isIncomplete = false })
end
return source
