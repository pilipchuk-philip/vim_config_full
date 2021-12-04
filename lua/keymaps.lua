local cmd = vim.cmd             -- execute Vim commands
--  Toggle show/hide invisible chars  
cmd [[ nnoremap <leader>i :set list!<cr>]]


cmd [[ let mapleader = "'" ]]
cmd [[ vmap <C-s> "*y ]]
cmd [[ let mapleader = "'" ]]
cmd [[ nnoremap ; : ]]
cmd [[ nnoremap <leader>; ;  ]]


--- lsp remaps
cmd[[ nnoremap <silent>gD :lua vim.lsp.buf.declaration()<CR> ]]
cmd[[ nnoremap <silent>gd :lua vim.lsp.buf.definition()<CR> ]]
cmd[[ nnoremap <silent>K :lua vim.lsp.buf.hover()<CR> ]]

-- python autoformater
cmd [[ imap <C-a> :!/usr/bin/python -m black % <CR>  ]]
cmd [[ nmap <C-a> :!/usr/bin/python -m black % <CR> ]]
cmd [[ vmap <C-a> :!/usr/bin/python -m black % <CR>  ]]

--- TODO ADD SCRIPT If Exists
cmd [[ imap <C-r> :!python % <CR> ]]
cmd [[ nmap <C-r> :!python % <CR> ]]
cmd [[ vmap <C-r> :!python % <CR> ]]
-----------------------------------------------------------------------
--- PLUGINS
-----------------------------------------------------------------------

cmd [[ nnoremap <BS> :NERDTreeToggle<CR> ]]

cmd [[ nmap <C-_>   :CommentToggle<CR> ]]
cmd [[ vmap <C-_>   :CommentToggle<CR> ]]

-- Telescope
cmd [[ nnoremap <C-p> :FzfLua files<CR> ]]
cmd [[ nnoremap <C-f> :FzfLua live_grep<CR> ]]
cmd [[ nnoremap <C-e> :FzfLua buffers<CR> ]]
cmd [[ nnoremap <C-g> :FzfLua git_status<CR> ]]
 
-- Comments
cmd [[ nmap <C-_>   <Plug>NERDCommenterToggle ]]
cmd [[ vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv ]]

cmd [[ nmap <c-h> :vsplit ~/.config/nvim/hotkeys.txt <cr> ]]
