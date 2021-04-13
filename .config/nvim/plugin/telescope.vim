"lua require("yoni")

nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>

"TODO: Search dotfiles
nnoremap <leader>vrc :lua require('yoni.telescope').search_dotfiles()<CR>
"nnoremap <leader>im :lua cequirec'yoni.telescope').background()<CR>


nnoremap <leader>gb :Telescope git_branches<CR>
nnoremap <leader>gc :Telescope git_commits<CR>
nnoremap <leader>gs :Telescope git_status<CR>
