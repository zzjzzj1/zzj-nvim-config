vim.opt.signcolumn = "yes"
-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true
-- 高亮所在行
vim.wo.cursorline = true
-- 缩进4个空格等于一个Tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 新行对齐当前行，空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索不要高亮
vim.o.hlsearch = false
-- 边输入边搜索
vim.o.incsearch = true
-- 使用增强状态栏后不再需要 vim 的模式提示
vim.o.showmode = false
-- 命令行高为0，提供足够的显示空间
vim.o.cmdheight = 1
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 禁止折行
vim.o.wrap = false
vim.wo.wrap = false
-- 行结尾可以跳到下一行
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
-- 允许隐藏被修改过的buffer
vim.o.hidden = true
-- 鼠标支持
vim.o.mouse = "a"
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- smaller updatetime 
vim.o.updatetime = 300
-- 等待mappings
vim.o.timeoutlen = 300
-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.list = true
vim.o.listchars = "space:·"
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.pumheight = 10
-- always show tabline
vim.o.showtabline = 2
vim.cmd(':hi NonText guifg=bg')
vim.cmd('hi SignColumn guibg=bg')
vim.cmd('hi GruvboxYellowSign guibg=bg')
vim.cmd('hi GruvboxRedSign guibg=bg')
vim.cmd('hi GruvboxGreenSign guibg=bg')
vim.cmd('hi GruvboxAquaSign guibg=bg')
vim.cmd('hi GruvboxBlueSign guibg=bg')
vim.cmd('hi GruvboxOrangeSign guibg=bg')
vim.cmd('hi GruvboxPurpleSign guibg=bg')
