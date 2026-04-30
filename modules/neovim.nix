{
  config = {
    programs.neovim = {
      enable = true;
      extraLuaConfig = ''
        -- Core Navigation (NEUI Cluster)
        -- Normal Mode
        vim.keymap.set('n', 'n', 'h', { noremap = true })
        vim.keymap.set('n', 'e', 'gj', { noremap = true })
        vim.keymap.set('n', 'u', 'gk', { noremap = true })
        vim.keymap.set('n', 'i', 'l', { noremap = true })

        -- Visual Mode (Helix select mode equivalent)
        vim.keymap.set('v', 'n', 'h', { noremap = true })
        vim.keymap.set('v', 'e', 'gj', { noremap = true })
        vim.keymap.set('v', 'u', 'gk', { noremap = true })
        vim.keymap.set('v', 'i', 'l', { noremap = true })

        -- Displaced Commands Restoration
        vim.keymap.set({'n', 'v'}, 'h', 'i', { noremap = true })
        vim.keymap.set({'n', 'v'}, 'j', 'e', { noremap = true })
        vim.keymap.set({'n', 'v'}, 'J', 'E', { noremap = true })
        vim.keymap.set({'n', 'v'}, 'k', 'n', { noremap = true })
        vim.keymap.set({'n', 'v'}, 'K', 'N', { noremap = true })
        vim.keymap.set({'n', 'v'}, 'l', 'u', { noremap = true })
        vim.keymap.set({'n', 'v'}, 'L', '<C-r>', { noremap = true })

        -- Utility and Selection
        vim.keymap.set({'n', 'v'}, 'H', 'I', { noremap = true })
        vim.keymap.set('n', 'E', 'J', { noremap = true })
        vim.keymap.set({'n', 'v'}, 'N', '<nop>', { noremap = true }) -- keep_selections is native to Vim selection
        vim.keymap.set({'n', 'v'}, 'U', '<nop>', { noremap = true })
        vim.keymap.set({'n', 'v'}, 'I', '<nop>', { noremap = true })

        -- GoTo Mode Optimization
        vim.keymap.set({'n', 'v'}, 'gn', '0', { noremap = true })
        vim.keymap.set({'n', 'v'}, 'gi', '$', { noremap = true })
        vim.keymap.set({'n', 'v'}, 'gu', 'gg', { noremap = true })
        vim.keymap.set({'n', 'v'}, 'ge', 'G', { noremap = true })

        -- View Mode Optimization
        vim.keymap.set({'n', 'v'}, 'zu', '<C-y>', { noremap = true })
        vim.keymap.set({'n', 'v'}, 'ze', '<C-e>', { noremap = true })
      '';
    };
  };
}
