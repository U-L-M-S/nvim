local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
[[    .o oOOOOOOOo                                            OOOo]],
[[    Ob.OOOOOOOo  OOOo.      oOOo.                      .adOOOOOOO]],
[[    OboO"""""""""""".OOo. .oOOOOOo.    OOOo.oOOOOOo.."""""""""'OO]],
[[    OOP.oOOOOOOOOOOO "POOOOOOOOOOOo.   `"OOOOOOOOOP,OOOOOOOOOOOB']],
[[    `O'OOOO'     `OOOOo"OOOOOOOOOOO` .adOOOOOOOOO"oOOO'    `OOOOo]],
[[    .OOOO'            `OOOOOOOOOOOOOOOOOOOOOOOOOO'            `OO]],
[[    OOOOO                 '"OOOOOOOOOOOOOOOO"`                oOO]],
[[   oOOOOOba.                .adOOOOOOOOOOba               .adOOOOo.]],
[[  oOOOOOOOOOOOOOba.    .adOOOOOOOOOO@^OOOOOOOba.     .adOOOOOOOOOOOO]],
[[ OOOOOOOOOOOOOOOOO.OOOOOOOOOOOOOO"`  '"OOOOOOOOOOOOO.OOOOOOOOOOOOOO]],
[[ "OOOO"       "YOoOOOOMOIONODOO"`  .   '"OOROAOPOEOOOoOY"     "OOO"]],
[[    Y           'OOOOOOOOOOOOOO: .oOOo. :OOOOOOOOOOO?'         :`]],
[[    :            .oO%OOOOOOOOOOo.OOOOOO.oOOOOOOOOOOOO?         .]],
[[    .            oOOP"%OOOOOOOOoOOOOOOO?oOOOOO?OOOO"OOo]],
[[                 '%o  OOOO"%OOOO%"%OOOOO"OOOOOO"OOO':]],
[[                      `$"  `OOOO' `O"Y ' `OOOO'  o             .]],
[[    .                  .     OP"          : o     .]],
[[                              :]],
[[                              .]],
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "Torva Messor"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
