vim.api.nvim_create_user_command(
    'JsRun',
    function(input)
        local content = vim.api.nvim_buf_get_name(0)
        enter = vim.api.nvim_replace_termcodes("<CR>", true, false, true)
        vim.api.nvim_feedkeys(":w", 'n', false)
        vim.api.nvim_feedkeys(enter, 'n', false)
        vim.api.nvim_feedkeys(":ToggleTerm", 'n', false)
        vim.api.nvim_feedkeys(enter, 'n', false)
        vim.api.nvim_feedkeys('node ' .. content .. enter, 'n', false)
        vim.api.nvim_feedkeys('exit', 'n', false)
    end,
    {}
)
