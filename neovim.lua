return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#070912", -- Default background
                base01 = "#32374d", -- Lighter background (status bars)
                base02 = "#070912", -- Selection background
                base03 = "#32374d", -- Comments, invisibles
                base04 = "#FCE5D5", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#FCE5D5", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#b96f73", -- Variables, errors, red
                base09 = "#d9abad", -- Integers, constants, orange
                base0A = "#cd9a79", -- Classes, types, yellow
                base0B = "#D3C7B7", -- Strings, green
                base0C = "#abb4ca", -- Support, regex, cyan
                base0D = "#8c80d5", -- Functions, keywords, blue
                base0E = "#b8acb9", -- Keywords, storage, magenta
                base0F = "#e8ccba", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
