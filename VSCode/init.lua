-- <leader> key
vim.g.mapleader = ' '
-- sync system clipboard
vim.opt.clipboard = 'unnamedplus'
-- Nav
local nav = {
    down = function()
        vim.fn.VSCodeNotify("workbench.action.navigateDown")
    end,

    up = function()
        vim.fn.VSCodeNotify("workbench.action.navigateUp")
    end,
    left = function()
        vim.fn.VSCodeNotify("workbench.action.navigateLeft")
    end,
    right = function()
        vim.fn.VSCodeNotify("workbench.action.navigateRight")
    end

}

local toggle = {
    toggleActivityBar = function()
        vim.fn.VSCodeNotify("workbench.action.toggleActivityBarVisibility")
    end,
    toggleSideBarVisibility = function()
        vim.fn.VSCodeNotify("workbench.action.toggleSidebarVisibility")
    end,
    toggleZenMode = function()
        vim.fn.VSCodeNotify("workbench.action.toggleZenMode")
    end,
    theme = function()
        vim.fn.VSCodeNotify("workbench.action.selectTheme")
    end,
}

local whichkey = {
    show = function()
      vim.fn.VSCodeNotify("whichkey.show")
    end
  }

local format = {
    formatDoc = function()
      vim.fn.VSCodeNotify("editor.action.formatDocument")
    end
  }

-- open config
vim.cmd('nmap <leader>c :e C:/Users/DanielClarke/AppData/Local/nvim/init.lua<cr>')
-- save
vim.cmd('nmap <leader>w :w<cr>')
-- quit
vim.cmd('nmap <leader>q :q<cr>')

-- split
vim.cmd('nmap <leader>v :vsplit<cr>')
vim.cmd('nmap <leader>s :split<cr>')

-- Navigation
vim.keymap.set({'n', 'v'}, "<C-h>", nav.left)
vim.keymap.set({'n', 'v'}, "<C-j>", nav.down)
vim.keymap.set({'n', 'v'}, "<C-k>", nav.up)
vim.keymap.set({'n', 'v'}, "<C-l>", nav.right)

-- toggle
vim.keymap.set({'n', 'v'}, "<leader>ta", toggle.toggleActivityBar)
vim.keymap.set({'n', 'v'}, "<leader>tz", toggle.toggleZenMode)
vim.keymap.set({'n', 'v'}, "<leader>te", toggle.toggleSideBarVisibility)
vim.keymap.set({'n', 'v'}, "<leader>tt", toggle.theme)
-- whichkey
vim.keymap.set({'n', 'v'}, "<leader><leader>",  whichkey.show)

--format
vim.keymap.set({'n', 'v'}, "<leader>f",  format.formatDoc)
-- refactor
vim.keymap.set({'v'}, "<leader>r", refactor.showMenu)
vim.keymap.set({'n'}, "<leader>rr", symbol.rename)
vim.api.nvim_set_keymap('n', '<leader>rd', 'V%d', {
    silent = true
})
vim.api.nvim_set_keymap('n', '<leader>rv', 'V%', {
    silent = true
})




-- paste without overwriting
vim.keymap.set('v', 'p', 'P')
-- redo
vim.keymap.set('n', 'U', '<C-r>')
-- skip folds (down, up)
vim.cmd('nmap j gj')
vim.cmd('nmap k gk')
-- search ignoring case
vim.opt.ignorecase = true
-- disable "ignorecase" option if the search pattern contains upper case characters
vim.opt.smartcase = true
