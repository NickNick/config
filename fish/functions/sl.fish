function sl --description 'Search lines and open in editor'
  rg --color=always --line-number --no-heading --smart-case . | \
	fzf -d':' --ansi --border --preview 'bat {1} --highlight-line {2} --number --color always' --preview-window ~8,+{2}-5 --bind 'enter:become(hx {1}:{2})'
end
