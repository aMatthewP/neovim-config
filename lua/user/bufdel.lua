local status, bufdel = pcall(require, "bufdel")

if not status then
	print "bufdel not working"
	return
end

bufdel.setup {
	next = 'tabs',  -- or 'cycle, 'alternate'
	quit = true,    -- quit Neovim when last buffer is closed
}
