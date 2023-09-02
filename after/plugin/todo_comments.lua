local keywords = {
	TODO = { icon = "☐ ", color = "#FF8C00" },
	WARNING = { icon = " ", color = "warning", alt = { "WARN", "XXX" } },
	FIXME = { icon = "⛏", color = "#ff4485" },
	DONE = { icon = "✅", color = "#358a14" },
	TEST = { icon = "⚒", color = "#ffffff", alt = { "TESTING" } },
	FIX = { icon = " ", color = "#FF2D00", alt = { "ERROR", "TO FIX" } },
	NOTE = { icon = "?", color = "#3498DB" }
}

require("todo-comments").setup({
	keywords = keywords
})

vim.keymap.set("n", "]t", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- You can also specify a list of valid jump keywords

vim.keymap.set("n", "]t", function()
	require("todo-comments").jump_next({ keywords = { "ERROR", "WARNING" } })
end, { desc = "Next error/warning todo comment" })

-- TODO: HELLO WORLD
-- FIXME: URGENT BOY
-- DONE: IT WORKS
-- ERROR: CHECK THIS STUFF
-- NOTE: NOTES HECK YEAH
-- PERF: IDK LA
-- HACK: ME HACKER BOI
-- TEST: HM
