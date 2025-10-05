return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "leoluz/nvim-dap-go",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require "dap"
      -- local ui = require "dapui"

      require("dap-go").setup()
      require("nvim-dap-virtual-text").setup({highlight_changed_variables = false, all_frames = true})
      dap.adapters.go = {
        type = "server",
        port = "${port}", executable = {
          command = "dlv",
          args = { "dap", "-l", "127.0.0.1:${port}" },
        },
      }

      local elixir_ls_debugger = vim.fn.exepath "elixir-ls-debugger"
      if elixir_ls_debugger ~= "" then
        dap.adapters.mix_task = {
          type = "executable",
          command = elixir_ls_debugger,
        }

        dap.configurations.elixir = {
          {
            type = "mix_task",
            name = "phoenix server",
            task = "phx.server",
            request = "launch",
            projectDir = "${workspaceFolder}",
            exitAfterTaskReturns = false,
            debugAutoInterpretAllModules = false,
          },
        }
      end


      -- Eval var under cursor
      -- vim.keymap.set("n", "<space>?", function() require("dapui").eval(nil, { enter = true }) end)
      vim.keymap.set("n", "<space>b", dap.toggle_breakpoint)

      vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint)
      vim.keymap.set("n", "<leader>dc", dap.continue)
      vim.keymap.set("n", "<leader>dx", dap.terminate)
      vim.keymap.set("n", "<leader>dr", dap.restart)
      vim.keymap.set("n", "<leader>ds", dap.step_into)
      vim.keymap.set("n", "<leader>du", dap.step_over)

      -- dap.listeners.before.attach.dapui_config = function()
      --   ui.open()
      -- end
      -- dap.listeners.before.launch.dapui_config = function()
      --   ui.open()
      -- end
      -- dap.listeners.before.event_terminated.dapui_config = function()
      --   ui.close()
      -- end
      -- dap.listeners.before.event_exited.dapui_config = function()
      --   ui.close()
      -- end
    end,
  },
}
