" sort a list
function! Sorted(l)
    let new_list = deepcopy(a:l)
    call sort(new_list)
    return new_list
endfunction

" reverse a list
function! Reversed(l)
    let new_list = deepcopy(a:l)
    call reverse(new_list)
    return new_list
endfunction

" append a value to a list
function! Append(l, val)
    let new_list = deepcopy(a:l)
    call add(new_list, a:val)
    return new_list
endfunction

" pop index from list
function! Pop(l, idx)
    let new_list = deepcopy(a:l)
    call remove(new_list, a:idx)
    return new_list
endfunction
