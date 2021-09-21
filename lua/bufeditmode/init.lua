--[[/* IMPORTS */]]

local libmodal = require 'libmodal'

--[[/* MODULE */]]

-- the key combos for this mode.
local _combos =
{
	['j'] = '<S-j>',
	['-'] = '<Esc><C-w>-',
	['='] = '<Esc><C-w>+',
	['.'] = '<Esc><C-w>>',
	[','] = '<Esc><C-w><',
	['?'] = 'help bufmode-usage',
}

--[[/* PUBLICIZE MODULE */]]

return function() libmodal.mode.enter('BUFFERS', _combos) end
