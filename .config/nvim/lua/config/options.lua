-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.termguicolors = true
vim.g.python3_host_prog = "/home/linuxbrew/.linuxbrew/bin/python3.9"

local inside_tmux = vim.fn.exists("$TMUX") == 1

if inside_tmux then
  vim.cmd([[
    let g:clipboard = {
                \   'name': 'myClipboard',
                \   'copy': {
                \      '+': ['tmux', 'load-buffer', '-'],
                \      '*': ['tmux', 'load-buffer', '-'],
                \    },
                \   'paste': {
                \      '+': ['tmux', 'save-buffer', '-'],
                \      '*': ['tmux', 'save-buffer', '-'],
                \   },
                \   'cache_enabled': 1,
                \ }
    ]])
elseif vim.fn.executable("clip.exe") and not inside_tmux then
  vim.cmd([[
    let g:clipboard = {
                \   'name': 'WslClipboard',
                \   'copy': {
                \      '+': 'clip.exe',
                \      '*': 'clip.exe',
                \    },
                \   'paste': {
                \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                \   },
                \   'cache_enabled': 0,
                \ }
	]])
elseif vim.fn.executable("xclip") and not inside_tmux then
  vim.cmd([[
    let g:clipboard = {
                \   'name': 'xclip',
                \   'copy': {
                \      '+': 'xclip -sel clip',
                \      '*': 'xclip -sel clip',
                \    },
                \   'paste': {
                \      '+': 'xclip -o -sel clip',
                \      '*': 'xclip -o -sel clip',
                \   },
                \   'cache_enabled': 1,
                \ }
	]])
end
