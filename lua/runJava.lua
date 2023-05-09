function stripfilename(filename)  
    return string.match(filename, "(.+)/[^/]*%.%w+$") --*nix system  
end  

function strippath(filename)  
    return string.match(filename, ".+/([^/]*%.%w+)$") -- *nix system  
end  

function stripextension(filename)  
    local idx = filename:match(".+()%.%w+$")  
    if(idx) then  
        return filename:sub(1, idx-1)  
    else  
        return filename  
    end  
end  


vim.api.nvim_create_user_command(
    'JavaRun',
    function(input)
        local content = vim.api.nvim_buf_get_name(0)
        enter = vim.api.nvim_replace_termcodes("<CR>", true, false, true)
        vim.api.nvim_feedkeys(":w", 'n', false)
        vim.api.nvim_feedkeys(enter, 'n', false)
        vim.api.nvim_feedkeys(":FloatermNew", 'n', false)
        vim.api.nvim_feedkeys(enter, 'n', false)
        local path = stripfilename(content)
        local fileName = strippath(content)
        local fileNameWithOutExtension = stripextension(fileName)
        vim.api.nvim_feedkeys('javac -d target/classes ' .. content .. enter, 'n', false)
        vim.api.nvim_feedkeys('cd target/classes' .. enter, 'n', false)
        vim.api.nvim_feedkeys('java ' .. fileNameWithOutExtension .. enter, 'n', false)
        vim.api.nvim_feedkeys('exit', 'n', false)
    end,
    {}
)

vim.api.nvim_create_user_command(
    'GradleRunBoot',
    function(input)
        enter = vim.api.nvim_replace_termcodes("<CR>", true, false, true)
        vim.api.nvim_feedkeys(":FloatermNew", 'n', false)
        vim.api.nvim_feedkeys(enter, 'n', false)
        vim.api.nvim_feedkeys('gradle bootRun' .. enter, 'n', false)
    end,
    {}
)

vim.api.nvim_create_user_command(
    'MavenRunBoot',
    function(input)
        enter = vim.api.nvim_replace_termcodes("<CR>", true, false, true)
        vim.api.nvim_feedkeys(":FloatermNew", 'n', false)
        vim.api.nvim_feedkeys(enter, 'n', false)
        vim.api.nvim_feedkeys('mvn spring-boot:run' .. enter, 'n', false)
    end,
    {}
)
