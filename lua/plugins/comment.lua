return {
  "numToStr/Comment.nvim",
  opts = {
    opleader = {
      ---Line-comment keymap
      line = "//",
      ---Block-comment keymap
      block = "??",
    },
  },
  config = function()
    require("Comment").setup({
      pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    })
  end,
  lazy = false,
}
