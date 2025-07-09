  return {
    "andre-kotake/nvim-chezmoi",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
    },
    opts = { 
      -- Your custom config 
      debug = false,
      -- chezmoi source path. Defaults to the result of `chezmoi source-path`
      -- Change this only if your dotfiles live in a different directory.
      source_path = nil,
      edit = {
        -- Automatically apply file on save. Can be one of: "auto", "confirm" or "never"
        apply_on_save = "never",
      },
      window = {
        -- Changes the layout for executed template window.
        execute_template = {
          relative = "editor",
          width = vim.o.columns,
          height = vim.o.lines,
          row = 0,
          col = 0,
          style = "minimal",
          border = "single",
        },
      },
    },
    config = function(_, opts)
      require("nvim-chezmoi").setup(opts)
    end,
  }
