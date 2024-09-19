return {
  {
    "tpope/vim-rails",
    config = function()
      vim.g.rails_app_root = vim.fn.getcwd()
    end
  },
  {
    "slim-template/vim-slim",
    ft = "slim",
    config = function()
      vim.g.slim_indent_tags = "html,body,head,meta,link,script,style,link_to,form_for,form_tag"
    end
  }
}
