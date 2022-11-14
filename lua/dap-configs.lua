local dap = require('dap')

dap.adapters.lldb = {
  type = 'executable',
  name = 'lldb',
  command = '/opt/homebrew/opt/llvm/bin/lldb-vscode'
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
    runInTerminal = true,
  },
}
