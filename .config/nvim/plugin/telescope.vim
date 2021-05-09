"lua require("yoni")

nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>

nnoremap <leader>vrc :lua require('yoni.telescope').search_dotfiles()<CR>
nnoremap <leader>pss :lua require('yoni.telescope').search_scripts()<CR>
nnoremap <leader>bb :lua require('yoni.telescope').blog()<CR>
nnoremap <leader>ef :lua require('yoni.telescope').fish()<CR>


nnoremap <leader>gb :Telescope git_branches<CR>
nnoremap <leader>gc :Telescope git_commits<CR>
nnoremap <leader>gs :Telescope git_status<CR>
