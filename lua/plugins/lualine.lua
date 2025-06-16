return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup {
            options = {
                icons_enabled = true,
                theme = "auto",
                component_separators = { left = "|", right = "|"},
                section_separators = {},
                disabled_filetypes = {
                    statusline = {"dashboard", "alpha", "ministarter", "snacks_dashboard"},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                always_show_tabline = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                    refresh_time = 16, -- ~60fps
                    events = {
                        "WinEnter",
                        "BufEnter",
                        "BufWritePost",
                        "SessionLoadPost",
                        "FileChangedShellPost",
                        "VimResized",
                        "Filetype",
                        "CursorMoved",
                        "CursorMovedI",
                        "ModeChanged",
                    },
                }
            },
            sections = {
                lualine_a = {"mode"},
                lualine_b = {"branch", "diff", "diagnostics"},
                lualine_c = {"filename"},
                lualine_x = {"filetype"},
                lualine_y = {"progress"},
                lualine_z = {
                    {
                        function()
                            local utc = os.time(os.date("!*t"))
                            local ist = utc + 19800
                            return "IST " .. os.date("%H:%M", ist) .. " | UTC " .. os.date("!%H:%M")
                        end,
                        icon = "",
                    }
                }
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {"filename"},
                lualine_x = {"location"},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = { "neo-tree", "lazy", "fzf" },
        }
    end
}
