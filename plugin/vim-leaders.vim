function! s:ListLeaders()
  silent! redir @a
  silent! nmap <LEADER>
  silent! redir END
  silent! new
  silent! put! a
  silent! g/^s*$/d
  "improved substitute below to only remove up to
  "the first comma
  silent! %s/^[^,]*,//
  silent! normal! ggVg
  silent! sort
  
  "last step is to get out of
  "visual line mode
  silent! normal! V
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal noswapfile
  setlocal buflisted
endfunction

command! Leaders :call s:ListLeaders()
