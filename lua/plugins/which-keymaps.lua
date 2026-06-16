-- ====================================================================================================================================================
-- TITLE: NeoVim keymaps with WhichKey
-- ABOUT: QoL keymaps and ...
-- ====================================================================================================================================================

local mod = {'n', 'v'}

return {
  -- WhichKey Full Guide
    { "<leader>?", 
      function()
        require('which-key').show({ global = false })
      end,
      desc = "Keymap guide",
    },
  
  --[[ File Browser --]] { "<leader>f", group = "Files" },
      { "<leader>fe", "<cmd>Oil<CR>",  desc = "File browser" },
      { "<leader>ff", "<cmd>Files<CR>",  desc = "File finder" },
      { "<leader>fg", "<cmd>RG<CR>",  desc = "File grep" },
    

  --[[ Buffers --]] { "<leader>b", group = "Buffers" },
      { "<leader>bp", "<cmd>bprevious<CR>", desc = "Previous buffer" },
      { "<leader>bn", "<cmd>bnext<CR>", desc = "Next buffer" },
      { "<leader>bf", "<cmd>Buffers<CR>", desc = "Find buffers" },

  --[[ Window Commands --]] { "<leader>w", group = "Window"},
      { "<leader>wsv", "<Cmd>vsplit<CR>",  desc = "Split window vertically"  },
      { "<leader>wsh", "<Cmd>split<CR>", desc = "Split window horizontally" },

      { "<C-h>", "<C-w>h", desc = "Move to left window", desc = "Moves to left window", hidden = true },
      { "<C-j>", "<C-w>j", desc = "Move to bottom window", desc = "Moves to bottom window", hidden = true },
      { "<C-k>", "<C-w>k", desc = "Move to above window", desc = "Moves to the window above", hidden = true },
      { "<C-l>", "<C-w>l", desc = "Move to right window", desc = "Moves to right window", hidden = true },

      { "<leader>wk", "<Cmd>resize +2<CR>",  desc = "Increase window height" },
      { "<leader>wj", "<Cmd>resize -2<CR>", desc = "Decrease window height" },
      { "<leader>wl", "<Cmd>vertical resize +2<CR>", desc = "Increase window width" },
      { "<leader>wh", "<Cmd>vertical resize -2<CR>", desc = "Decrease window width" },

      { "<leader>wt", "<Cmd>ToggleTerm direction=float<CR>", desc = "Toggle terminal" }, 

  --[[ mini.surround --]] { "<leader>s", proxy = "s", group = "Surround" },
      { "sa", desc = "Add surroundings" },
      { "sd", desc = "Delete surroundings" },
      { "sr", desc = "Replace surroundings" },
      { "sf", desc = "Finds right surrounding" },
      { "sF", desc = "Finds left surrounding" },
      { "sh", desc = "Highlights surroundings" },

  -- Save and Exit commands
      { mode = mod, "<C-w>", "<cmd>w<CR>", desc = "Saves file" },
      { mode = mod, "<C-q>", "<cmd>q<CR>", desc = "Quits NeoVim" },
      
  -- Disable arrow movement
      { "<Left>", '<cmd>echo "Use H!"<CR>', desc = "Avoids < use", hidden = true },
      { "<Right>", '<cmd>echo "Use L!"<CR>', desc = "Avoids > use", hidden = true },
      { "<Up>", '<cmd>echo "Use K!"<CR>', desc = "Avoids ^ use", hidden = true },
      { "<Down>", '<cmd>echo "Use J!"<CR>', desc = "Avoids V use", hidden = true },
  
  -- Centering view
      { "n", "nzzzv", desc = "Next search result {centered}"  },
      { "N", "Nzzzv", desc = "Previous search result {centered}" },
      { "<C-d>", "<C-d>zz", desc = "Half page down {centered}" },
      { "<C-u>", "<C-u>zz", desc = "Half page up {centered}" },
    
  -- Better indenting in visual mode
      { mode = "v", "<", "<gv", desc = "Indent Left and reselect" },
      { mode = "v", ">", ">gv", desc = "Indent Right and reselect" },

  -- Better J behaviour
      { "J", "mzJ`z", desc = "Join lines and keep cursor position" },

  -- Quick config editing
      { "<leader>rc", "<cmd>e ~/.config/nvim/init.lua<CR>", desc = "Edit config", hidden = true },
}
