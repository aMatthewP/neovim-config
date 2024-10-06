require('nvim-rooter').setup {
  rooter_patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "CMakeLists.txt", ".gitignore", "./src", "lua" , "./plugin", "./.vscode" --[[ "compile_flags.txt" ]] },
  trigger_patterns = { '*' },
  manual = false,
}
