for f in split(glob('~/.config/nvim/configs/*.vim'), '\n')
	exec 'source' f
endfor
