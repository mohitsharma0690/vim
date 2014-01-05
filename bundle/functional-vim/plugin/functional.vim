
" =========================================
"
" Assorted functions that support functional 
" programming in Vimscript
"
" =========================================
 

" sort a list
function! Sorted(org)
    let new_copy = deepcopy(a:org)
    call sort(new_copy)
    return new_copy
endfunction

" reverse a list
function! Reversed(org)
    let new_copy = deepcopy(a:org)
    call reverse(new_copy)
    return new_copy 
endfunction

" append a value to a list
function! Append(org, val)
    let new_copy = deepcopy(a:org)
    call add(new_copy, a:val)
    return new_copy
endfunction

" pop index from list/dict
function! Pop(org, toRemove)
    let new_copy = deepcopy(a:org)
    if type(new_copy) == type([])
        call remove(new_copy, a:toRemove)
    elseif type(new_copy) == type({})
        call remove(new_copy, a:toRemove) 
    endif
    return new_copy 
endfunction


" ========================================= 
" Higher ordered functions
" ========================================= 

" Map
function! Mapped(fn, org)
    let new_copy = deepcopy(a:org)
    if type(new_copy) == type([])
        call map(new_copy, string(a:fn) . '(v:val)')
    elseif type(new_copy) == tyep({})
        call map(new_copy, string(a:fn) . '(v:key)')
    endif
    return new_copy 
endfunction

" Filter
function! Filtered(fn, org)
    let new_copy = deepcopy(a:org)
    if type(new_copy) == type([])
        call filter(new_copy, string(a:fn) . '(v:val)')
    elseif type(new_copy) == type({})
        call filter(new_copy, string(a:fn) . '(v:key)')
    endif
    return new_copy 
endfunction

" Remove
function! Removed(fn, org)
    let new_copy = deepcopy(a:org)
    if type(new_copy) == type([])
        call filter(new_copy, '!' . string(a:fn) . '(v:val)')
    elseif type(new_copy) == type({})
        call filter(new_copy, '!' . string(a:fn) . '(v:key)')
    endif
    return new_copy 
endfunction

