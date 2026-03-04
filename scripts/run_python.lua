vim.api.nvim_create_autocmd("FileType", {
	pattern = { "python" },
	callback = function()
		vim.keymap.set("n", "<leader>rp", function()
			local file = vim.fn.expand("%:p")
			if file == nil or file == "" then
				vim.notify("No file to run", vim.log.levels.WARN)
				return
			end
			-- Build the command
			local cmd = "python3 " .. vim.fn.shellescape(file)
			-- Use toggleterm's exec with explicit horizontal direction
			require("toggleterm").exec(cmd, 1, 12, nil, "horizontal")
		end, { buffer = true, desc = "Run python file in ToggleTerm" })
	end,
})
