-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
      ["<leader>a["] = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Prev error" },
      ["<leader>a]"] = { "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Next error" },
      ["<leader>ao"] = { "<cmd>lua vim.diagnostic.open_float()<cr>", desc = "Open desc" },
      ['<leader>a'] = {name = 'Error'},
    -- second key is the lefthand side of the map
      ["<leader>'''"] = { "<cmd>Neogen<cr>", desc = "DockString" },

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
