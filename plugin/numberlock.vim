" Toggle it with F4

let g:numberlock = 0

if !exists('g:numberlock_layout')
  let g:numberlock_layout = 'us'
endif

nnoremap <silent><F4> :call NumberLock()<CR>
function! NumberLock()
  if g:numberlock
    let g:numberlock = 0
    iunmap 1
    iunmap 2
    iunmap 3
    iunmap 4
    iunmap 5
    iunmap 6
    iunmap 7
    iunmap 8
    iunmap 9
    iunmap 0
  elseif g:numberlock_layout == 'us'
    let g:numberlock = 1
    inoremap 1 !
    inoremap 2 @
    inoremap 3 #
    inoremap 4 $
    inoremap 5 %
    inoremap 6 ^
    inoremap 7 &
    inoremap 8 *
    inoremap 9 (
    inoremap 0 )
  elseif g:numberlock_layout == 'uk'
    let g:numberlock = 1
    inoremap 1 !
    inoremap 2 "
    inoremap 4 $
    inoremap 5 %
    inoremap 6 ^
    inoremap 7 &
    inoremap 8 *
    inoremap 9 )
    inoremap 0 )
  elseif g:numberlock_layout =~ 'es\|pt'
    let g:numberlock = 1
    inoremap 0 =
    inoremap 1 !
    inoremap 2 "
    inoremap 3 #
    inoremap 4 $
    inoremap 5 %
    inoremap 6 &
    inoremap 7 /
    inoremap 8 (
    inoremap 9 )
  endif
endfunction
