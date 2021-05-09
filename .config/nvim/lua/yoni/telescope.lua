local actions = require('telescope.actions')

require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' > ',
        color_devicons = true,

        --file_ignoe_patterns = {"dist"}
        --file_ignoe_patterns = {"package-lock.json"}
        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
   }
}

require('telescope').load_extension('fzy_native')

local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "/Users/yonikosiner/.config/nvim/",
    })
end

M.search_scripts = function()
    require("telescope.builtin").find_files({
        prompt_title = "< Scripts >",
        cwd = "/Users/yonikosiner/scripts/",
    })
end

M.fish= function()
    require("telescope.builtin").find_files({
        prompt_title = "< Fish >",
        cwd = "/Users/yonikosiner/.config/fish",
    })
end

M.blog = function()
    require("telescope.builtin").find_files({
        prompt_title = "< Blog Posts >",
        cwd = "/Users/yonikosiner/personal/yonikosiner.com/frontend/src/posts",
    })
end

M.grep = function()
    require("telescope.builtin").live_grep()
end

return M
