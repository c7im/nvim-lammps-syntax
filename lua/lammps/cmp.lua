-- Completion source for LAMMPS
local source = {}

local commands = {
  "run", "fix", "unfix", "compute", "variable", "region", "group",
  "pair_style", "pair_coeff", "bond_style", "angle_style",
  "dihedral_style", "improper_style", "timestep", "thermo", "dump",
  "restart", "read_data", "write_data", "velocity", "minimize",
  "fix ave/time", "fix nvt", "fix nve", "fix npt"
}

function source:is_available()
  return vim.bo.filetype == "lammps"
end

function source:get_debug_name()
  return "lammps"
end

function source:complete(_, callback)
  local items = {}
  for _, cmd in ipairs(commands) do
    table.insert(items, { label = cmd, kind = vim.lsp.protocol.CompletionItemKind.Keyword })
  end
  callback({ items = items, isIncomplete = false })
end

return source
