local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

--cmd[[set clipboard=unnamedplus,unnamed ]]
-- Направление перевода с русского на английский
g.translate_source = 'ru'
g.translate_target = 'en'

-- Компактный вид у тагбара и Отк. сортировка по имени у тагбара
g.tagbar_compact = 1
g.tagbar_sort = 0

-- Конфиг ale + eslint
g.ale_fixers = {
    javascript= { 'eslint' }
}

cmd[[let g:ale_linters = {'python': ['pyls']}]]
cmd[[let g:ale_fixers = {'python': ['black']} ]]

g.ale_disable_lsp = 1
g.ale_sign_error = '❌'
g.ale_sign_warning = '⚠️'
-- g.ale_fix_on_save = 1

-- Запуск линтера, только при сохранении
g.ale_lint_on_text_changed = 'never'
g.ale_lint_on_insert_leave = 0

-----------------------------------------------------------
-- Главные
-----------------------------------------------------------
opt.cursorline = true               -- Подсветка строки с курсором
opt.spelllang= { 'en_us', 'ru' }    -- Словари рус eng
opt.number = true                   -- Включаем нумерацию строк
opt.so=999                          -- Курсор всегда в центре экрана
opt.undofile = true                 -- Возможность отката назад
opt.splitright = true               -- vertical split вправо
opt.splitbelow = true               -- horizontal split вниз
-----------------------------------------------------------
-- Цветовая схема
-----------------------------------------------------------
opt.termguicolors = true      --  24-bit RGB colors

vim.cmd[[colorscheme tokyonight]]
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_comments = true
vim.g.tokyonight_italic_keywords = true
vim.g.tokyonight_transparent_sidebar = false
vim.g.tokyonight_dark_sidebar = true
vim.g.tokyonight_lualine_bold = true

-- NERDTRree
vim.cmd[[let g:webdevicons_enable_nerdtree = 1 ]]

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- vim.g.tokyonight_style = "night"
-----------------------------------------------------------
-- Табы и отступы
-----------------------------------------------------------
cmd([[
filetype indent plugin on
syntax enable
]])

opt.tabstop = 4           -- 1 tab == 4 spaces
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.smarttab = true
opt.smartindent = true    -- autoindent new lines
opt.expandtab = true      -- use spaces instead of tabs

cmd[[ set copyindent ]]

-----------------------------------------------------------
-- Search and other
-----------------------------------------------------------
cmd[[ set showmatch ]]
cmd[[ set ignorecase ]]
cmd[[ set smartcase ]]

cmd[[ set scrolloff=4 ]]

cmd[[ set virtualedit=all ]]
cmd[[ set hlsearch ]]
cmd[[ set incsearch ]]
cmd[[ set gdefault ]]
cmd[[ set nolist ]]
cmd[[ set mouse=a ]]
cmd[[ set fileformats="unix,dos,mac" ]]
cmd[[ set formatoptions+=1 ]]
cmd[[ set autoread ]]

-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]
-- remove line lenght marker for selected filetypes
cmd [[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]]
-- 2 spaces for selected filetypes
cmd [[
autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,htmljinja setlocal shiftwidth=4 tabstop=4
]]
-- С этой строкой отлично форматирует html файл, который содержит jinja2
cmd[[ autocmd BufNewFile,BufRead *.html set filetype=htmldjango ]]
-----------------------------------------------------------
-- Полезные фишки
-----------------------------------------------------------
-- Запоминает где nvim последний раз редактировал файл
cmd [[
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]
-- Подсвечивает на доли секунды скопированную часть текста
exec([[
    augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
    augroup end
]], false)

cmd[[ set title ]]
cmd[[ set noerrorbells  ]]              -- don't beep
cmd[[ set showcmd  ]]                   -- show (partial) command in the last line of the screen
cmd[[ set nomodeline  ]]                -- disable mode lines (security measure)
cmd[[ set lazyredraw ]]                 -- don't update the display while

cmd[[ set wildmenu  ]]                  -- make tab completion for files/buffers act like bash
cmd[[ set wildmode=list:full ]]         -- show a list when pressing tab and complete
cmd[[ set wildignore=*.swp,*.bak,*.pyc,*.class ]]
cmd [[ set ignorecase ]]
cmd [[ set showmode ]]                    -- always show what mode we're currently
cmd [[ set nowrap ]]                     -- don't wrap lines
 
cmd [[ set nobackup ]]                   -- do not keep backup files, it's 70's style
cmd [[ set noswapfile  ]]                -- do not write annoying intermediate swap
 
cmd [[ set termencoding=utf-8 ]]
cmd [[ set encoding=utf-8 ]]
cmd [[ set fileformat=unix ]]    
