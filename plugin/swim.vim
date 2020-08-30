if exists('g:loaded_swim')
  finish
endif

let g:loaded_swim = 1

let g:swim_dir = expand('<sfile>:p:h:h')

let g:swim_previous_input_method = ''

if !exists(g:swim_default_input_method)
  let g:swim_default_input_method = 'com.apple.keylayout.ABC'
endif

if !exists(g:swim_on_ft)
  let g:swim_on_ft = ['tex', '']
endif

augroup swim
  autocmd!
  autocmd InsertEnter * call swim#use(g:swim_previous_input_method)
  autocmd InsertLeave * call swim#leave()
augroup ENDGROUP
