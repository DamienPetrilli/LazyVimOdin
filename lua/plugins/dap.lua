return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    local dap = require("dap")
    
    dap.adapters.lldb = {
      type = 'executable',
      command = '/opt/homebrew/opt/llvm/bin/lldb-dap',
      name = 'lldb'
    }
    
    dap.configurations.odin = {
      {
        name = 'Launch Odin Program',
        type = 'lldb',
        request = 'launch',
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
        runInTerminal = false,
        env = function()
          local variables = {}
          for k, v in pairs(vim.fn.environ()) do
            table.insert(variables, string.format("%s=%s", k, v))
          end
          return variables
        end,
      },
    }
  end,
}
