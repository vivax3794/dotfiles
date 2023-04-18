-- Better scrolling
vim.opt.scrolloff = 15
require('scrollEOF').setup()


-- Start NERDTree. If a file is specified, move the cursor to its window.
-- (I could maybe convert this to lua, but I guess just keeping it in vimscript is best)
-- vim.cmd([[
-- autocmd StdinReadPre * let s:std_in=1
-- autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
-- ]])

--if vim.fn.match(vim.o.shell, "fish$") ~= -1 then
--  vim.o.shell = "sh"
-- end

vim.opt.showbreak = "> "
vim.opt.breakindent = true
vim.opt.lbr = true
vim.opt.formatoptions = "l"

-- ignore non-code files
require("telescope").setup{
	defaults = {
		file_ignore_patterns = {
			"assets/.*",
			"SourceAssets"
		}
	}
}

-- sensitive file
function check_for_hidden_file()
  -- Get the first line of the buffer
  local first_line = vim.fn.getline(1)

  -- Check if the first line contains the string "HIDE_FILE"
  if first_line ~= nil and first_line:find("HIDE_FILE") ~= nil then
    local choice = vim.fn.confirm("This file is marked as hidden. Do you want to continue?", "&Yes\n&No", 2)
    if choice == 2 then
      vim.cmd("q!")
    end
  end
end

vim.cmd("autocmd BufReadPost * lua check_for_hidden_file()")


-- Trouble
require("trouble").setup {}
require("todo-comments").setup {
	keywords = {
		REFACTOR = {
			icon = "📝",
			alt = {"CHANGE"}
		}
	}
}
