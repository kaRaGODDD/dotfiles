return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "leoluz/nvim-dap-go",
    },
    opts = {
        keymaps = {
            { mode = "n", lhs = "<leader>dk", rhs = function() require("dap").continue() end, desc = "Continue Debugging" },
            { mode = "n", lhs = "<leader>dl", rhs = function() require("dap").run_last() end, desc = "Run Last Debugging" },
            { mode = "n", lhs = "<leader>b", rhs = function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
        },
    },
    config = function(_, opts)
        local dap = require("dap")
        local dapui = require("dapui")
        local dap_go = require("dap-go")

        dapui.setup()
        dap_go.setup()

        -- Open/close dapui with events
        dap.listeners.before.event_initialized["dapui_config"] = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
        end

        -- Apply key mappings
        for _, map in ipairs(opts.keymaps) do
            vim.keymap.set(map.mode, map.lhs, map.rhs, { desc = map.desc })
        end
    end,
}

