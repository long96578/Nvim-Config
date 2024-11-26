-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Autocommands for C++ filetype
vim.cmd([[
augroup cpp_mappings
    autocmd!
    autocmd FileType cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
    autocmd FileType cpp nnoremap <F10> :term%:r<CR>
    autocmd FileType cpp nnoremap <C-C> :s/^\\(\\s*\\)/\\1\\/\\/ <CR> :s/^\\(\\s*\\)\\/\\/\\/\\//\\1<CR> $
augroup END
]])
