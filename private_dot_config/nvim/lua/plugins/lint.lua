return {
  "mfussenegger/nvim-lint",
  dependencies = {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "corthx/NeoKit",
  },
  ft = function()
    return require("config.mason-tools").linter.listLintersFt()
  end,
  config = function()
    require("lint").linters_by_ft = require("config.mason-tools").linter.listLintersByFt()
  end,
}
