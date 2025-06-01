vim9script

# Enable completion where available.
# This setting must be set before ALE is loaded.
# You should not turn this setting on if you wish to use ALE as a completion
# source for other completion plugins, like Deoplete.
# g:ale_completion_enabled = 1

g:ale_fix_on_save = 1

g:ale_fix_on_save = 1
g:ale_virtualtext_cursor = 'disabled'

g:ale_lint_on_enter = 0
g:ale_lint_on_insert_leave = 0
g:ale_lint_on_text_changed = 'never'

g:ale_sign_column_always = 1
g:ale_set_highlights = 0

g:ale_fixers = {
      '*': ['remove_trailing_lines', 'trim_whitespace'],
      'python': ['autopep8'],
      'sh': ['shfmt'],
}


#- Colors
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight ALEWarning ctermbg=DarkMagenta
