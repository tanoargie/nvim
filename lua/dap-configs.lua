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
    cwd = '${workspaceFolder}'
  },
}

-- Dart / Flutter
dap.adapters.dart = {
  type = 'executable',
  command = 'dart',
  args = { 'debug_adapter' }
}
dap.adapters.flutter = {
  type = 'executable',
  command = 'flutter',
  args = { 'debug_adapter' }
}
dap.configurations.dart = {
  {
    type = "dart",
    request = "launch",
    name = "Launch dart",
    dartSdkPath = "${HOME}/development/flutter/bin/cache/dart-sdk/bin/dart", -- ensure this is correct
    flutterSdkPath = "${HOME}/development/flutter/bin/flutter",              -- ensure this is correct
    program = "${workspaceFolder}/lib/main.dart",                            -- ensure this is correct
    cwd = "${workspaceFolder}",
  },
  {
    type = "flutter",
    request = "launch",
    name = "Launch flutter",
    dartSdkPath = "${HOME}/development/flutter/bin/cache/dart-sdk/bin/dart", -- ensure this is correct
    flutterSdkPath = "${HOME}/development/flutter/bin/flutter",              -- ensure this is correct
    program = "${workspaceFolder}/lib/main.dart",                            -- ensure this is correct
    cwd = "${workspaceFolder}",
  }
}

return dap
