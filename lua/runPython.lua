vim.api.nvim_create_user_command(
  'PythonRun',
  function(input)
        data = vim.api.nvim_buf_get_name(0)
        enter = vim.api.nvim_replace_termcodes("<CR>", true, false, true)
        vim.api.nvim_feedkeys(":w", 'n', false)
        vim.api.nvim_feedkeys(enter, 'n', false)
        vim.api.nvim_feedkeys(":FloatermNew", 'n', false)
        vim.api.nvim_feedkeys(enter, 'n', false)
        vim.api.nvim_feedkeys('python ', 'n', false)
        vim.api.nvim_feedkeys(data, 'n', false)
        vim.api.nvim_feedkeys(enter, 'n', false)
  end,
  {}
)
