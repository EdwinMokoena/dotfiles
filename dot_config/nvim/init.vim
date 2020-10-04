" Enable filetype pluginsB-q>
filetype plugin indent on
" ##########################################################
" ############# Vim.plug - Plugin Declaration ##############
" ##########################################################
"
" Plugin Name - Short Description
"         - Long Description
"         - List:
"         > bullet point
"         > another bullet point
"         ** NB
" Plug    - plugin declaration

call plug#begin('~/.local/share/nvim/plugged')
" Securemodelines- A secure alternative to vim modelines ############# SECURITY
Plug             'ciaranm/securemodelines'
" Deoplete       - Code Completion Engine
Plug             'Shougo/deoplete.nvim',{'do':':UpdateRemotePlugins'}
" Auto-Pairs     - Auto Quote/Parenthesis Close
Plug             'jiangmiao/auto-pairs'

" EditorConfig   - MULTI-EDITOR - Code formatting config:
"                > Charset
"                > Indent style & size
"                > Trim trailing white space
"                > Etc
Plug             'editorconfig/editorconfig-vim'

" Emmet          - HTML Expansion
Plug             'mattn/emmet-vim'

" CtrlP          - Fuzzy file,buffer & tag finder
Plug             'ctrlpvim/ctrlp.vim'

" Denite         -Fuzzy file finding, file management, project searching
Plug             'Shougo/denite.nvim'
"
" Easy Motion    - Text Navigation
"                - + SHC to navigate visible text
Plug             'easymotion/vim-easymotion'

" Airline        - Info Tabline
"                - + Bar(bottom) showing :
"                > CUR mode
"                > CUR git branch
"                > FL Encoding
"                > CUR line
"                > etc
Plug             'bling/vim-airline'

" Airline Themes - Make airline look good
Plug             'vim-airline/vim-airline-themes'

" DevIcons       - Adds filetype icons
Plug             'ryanoasis/vim-devicons'

" Vim-startify   - Fancy Start Screen
Plug             'mhinz/vim-startify'

" Coc-nvim       - Intellisense engine
"                - A completion framework and LSP
Plug             'neoclide/coc.nvim',{'branch':'release'}

" Vim-workspace  - Session management:
"                > Track sessions in directory / current working directory
"                > Manage autosave files in current sessions
"                > Manage UNdo history
"
Plug             'thaerkh/vim-workspace'

" NERDTree       - Proper File Browser
Plug             'scrooloose/nerdtree'

" Vim-Polyglot   - syntax highlighter
Plug             'sheerun/vim-polyglot'

" Vim-spacectrl  - A solution to manage:
"                > tabs,buffers and files
"                > workspaces/sessions
"                > fuzzy finder
"                > bookmarks
Plug             'vim-ctrlspace/vim-ctrlspace'

" Vim-obsession  - Session management with tmux integration
Plug             'tpope/vim-obsession'

" Onedark        - Colorscheme
Plug             'joshdick/onedark.vim'

" Vim-pug        - Syntax Highlighting for pug
Plug             'digitaltoad/vim-pug'

" vim-prettier   - Prettify code
Plug             'prettier/vim-prettier',{'do': 'npm install'}

" vim-wintabs    - Per window buffer manager
Plug             'zefei/vim-wintabs'
Plug             'zefei/vim-wintabs-powerline'

" vim-commentry  - Comment out line
Plug             'tpope/vim-commentary'

" Indentation guides
Plug             'nathanaelkane/vim-indent-guides'

" Format code with one button press (or automatically on save).
Plug              'Chiel92/vim-autoformat'
" ##########################################################
" #############         Custom Plugins        ##############
" ##########################################################
" Make NERDTree cd into selected dir
"Plug              '~/.vim/nerdtree_plugin/cd_mapping.vim'

call plug#end()

" ##########################################################
" #############      Vim Behaviour Config     ##############
" ##########################################################
" # Map the leader key
let mapleader = '\<SPACE>'
" # Enable Number display
set number relativenumber
" # Disable column/line number in statusline
set noruler
" # Set permanent undo
set undodir=~/.nvimundo
set undofile
" # Set tab character to 2 spaces wide
set tabstop=2
" # Use actual tab character
"set softtabstop=0 noexpandtab
" ################ FOR SECURITY
" # disable modelines
set nomodeline
" # disable modelineexpr
set nomodelineexpr
" ##############################
" # Use CTRL+S to Save
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>

nmap <leader>s :w<CR>
" # Show all open buffers and their status
map <S-t> :ls<cr>
" # Refresh Neovim
map <m-r> :so%<CR>
" # Always open help window in new tab
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab h' : 'h'

" # Allows buffers to be hidden if youve modified it(required)
set hidden
" # Use TT to open new buffer tab,replaces :tabnew
map <silent> tt :tabnew<CR>
" # Move to the next tab
map <S-TAB> :tabn<CR>
" # Move to the prev tab
map <m-TAB> :tabp<cr>
" # Move to the next buffer
map <c-PageDown> :WintabsNext<cr>
imap <c-PageDown> <Esc> :WintabsNext<cr>
" # Move the previous tab
map <c-PageUp> :WintabsPrevious<cr>
imap <c-PageUp> <Esc> :WintabsPrevious<cr>
" # Close the current buffer and move to the previous one
" Set BuffNum
autocmd BufEnter,BufAdd,BufDelete,BufWipeout * let g:BuffNum = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))

function! Close()
  "g:CurrTabPageNum = tabpagenr()
  "g:TabPageWinNumber = tabpagewinnr(g:CurrTabPageNum,'$')
  "execute "echom CurrTabPageNum"
  if tabpagenr("$") < 2
    if exists("b:NERDTree") && b:NERDTree.isTabTree() && g:BuffNum < 3 || g:BuffNum < 2
      if g:BuffNum <= 1
        execute "q"
      endif
      execute "WintabsCloseWindow"
    else
      execute "WintabsClose"
    endif
  elseif tabpagenr("$") > 1
    if exists("b:NERDTree") && b:NERDTree.isTabTree() && g:BuffNum < 3 || g:BuffNum < 2
      execute "WintabsClose"
    else
      execute "WintabsCloseVimtab"
    endif
  endif
endfunction
nmap <c-c> :call Close()<cr>
imap <c-c> <Esc> :call Close()<cr>
" # Show all open buffers and their status
map <S-t> :ls<cr>
" # Refresh Neovim
map <m-r> :so%<CR>
" # Always open help window in new tab
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab h' : 'h'
" # Use native clipboard
set clipboard=unnamed
nnoremap <expr> p (v:register == '"' && &clipboard =~ 'unnamed' ? '"*p' : '"' . v:register . 'p')
" # Map CTRL-F to nvim file explorer
" nmap <c-f> :Explore<cr>

" ##########################################################
" #############    Vim.plug - Plugin Config   ##############
" ##########################################################
" Plugin Name
"  # config documentation
"  config
" Vim-Indentation-guides
" Vim-startify
" # MUST BE CONFIGURED BEFORE NERDTree
" # Number of files dislayed
let g:startify_files_number = 5
" # Number of sessions displayed
let g:startify_session_number = 10
" # Sessions directory
let g:startify_session_dir = $HOME . "/.config/nvim/sessions/"
" # Dir lists displayed on start screen
let g:startify_list = [
      \ {'header' : [' Most recently used files in current directory:'],      'type' : 'dir'},
      \ {'header' : [' Most recently used files:'],                           'type' : 'files'},
      \ {'header' : [' Saved sessions'],                                      'type' : 'sessions'},
      \ ]
" # Update startify constantly as opposed to when nvim is closed
let g:startify_update_oldfiles = 1
" # When opening a file or bookmark,change to it's dir
let g:startify_change_to_dir = 1
" # Disable session autoload
"   let g:startify_session_autoload = 0
" # Open startify when vim starts if no files were specified
augroup StartPage
  autocmd vimenter * if !argc() | Startify | endif
  autocmd TabNewEntered * if !argc() | Startify | endif
augroup END

" NERDTree (proper file browser)
" # Toggle NERDTree
nmap <c-f> :NERDTreeToggle<cr>
" # Start NERDTree in selected input dir
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd TabNewEntered * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" # Start NERDTree if no selected input dir2
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | wincmd h | endif
autocmd TabNewEntered * if argc() == 0 && !exists("s:std_in") | NERDTree | wincmd h | endif
" # show on the right :)
let g:NERDTreeWinPos = 'right'
" # Auto change directory
" let g:NERDTreeChDirMode = 2
" # Auto clean buffer of deleted files
let g:NERDTreeAutoDeleteBuffer = 1
" # Make it look pretty
let g:NERDTreeMinimalUI = 0
let g:NERDTreeDirArrowExpandable  = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" # Remap open key
let g:NERDTreeMapCustomOpen = '<m-g>'
autocmd FileType nerdtree nmap <buffer> <CR> <m-g> <s-c>
" # Close Vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && tabpagenr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" # Close the current tab if the only window open is NERDTree and there are still other tabs open
autocmd bufenter * if (winnr("$") == 1 && tabpagenr("$") > 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | execute "tabclose" | endif
"  EditorConfig
" # config @ ~/.editorconfig

" Emmet
" # config N/A

" CtrlP
" # Map to Ctrl+P
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
" Vim-spacectrl
" # Map to Ctrl+P
let g:CtrlSpaceDefaultMappingKey = '<c-p>'
" # Fuzzy search delay
let g:CtrlSpaceSearchTiming = 700

" Coc-nvim
" # if hidden is not set, TextEdit might fail.
set hidden

" # Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" # Better display for messages
set cmdheight=2

" # You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" # don't give |ins-completion-menu| messages.
set shortmess+=c

" # always show signcolumns
set signcolumn=yes

" # Use tab for trigger completion with characters ahead and navigate.
" # Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" # Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" # Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" # Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" # Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" # Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" # Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" # Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" # Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" # Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
augroup cocgroup
  autocmd!
  " # Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " # Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" # Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" # Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" # Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" # Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" # Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" # Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" # use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" # Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" # Using CocList
" # Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" # Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" # Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" # Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" # Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" # Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" # Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" # Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR><Paste>

" vim-workspace
" # Auto create sessions
" let g:workspace_autocreate = 1
" # Open workspace session in new tab
" let g:workspace_create_new_tabs = 1
" # Don't load session if explicitly loading file
" let g:workspace_session_disable_on_args = 1
" # Directory to save all sessions
" let g:workspace_session_directory = $HOME . "/.config/nvim/sessions/"
" # Persist undo history for session
" let g:workspace_persist_undo_history = 1
" # Directory to save undo history
" let g:workspace_undodir = $HOME . "/.config/nvim/sessions/"
" # Autosave Files edited in a workspace session on InsertLeave,idle (CursorHold),pane switches(Focus[Lost & Gained]),or buffer switches(BufLeave)
" let g:workspace_autosave_always = 0

" Tender
" # Enable true color
set termguicolors

" # Enable Theme
syntax enable
colorscheme onedark

" Airline
" # Enable the list of buffers and tabs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
" # Show just the filename for buffer
let g:airline#extensions#tabline#fnamemod = ":t"
" # Show number of splits and tabnr
let g:airline#extensions#tabline#ctrlspace_show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#tabnr_formatter = 'tabnr'
" # exclude filename matches from tabline
let g:airline#extensions#tabline#exclude = ['NERD_tree_*']
" # Hide section_z (percentage,line count etc)
let g:airline#extensions#default#layout = [
      \['a','b','c'],
      \['x','y','error','warning']
      \]
" # play nice with ctrlspace
let g:airline_exclude_preview = 1
" # enable ctrlspace integration
let g:airline#extensions#ctrlspace#enabled = 1
" # map statusline to ctrlspace statusline
let g:CtrlSpaceStatuslineFunction = "airline#extensions#ctrlspace#statusline()"
" # configure pattern to be ignored on BufAdd autocommand >
" # fixes unnecessary redraw, when e.g. opening Gundo window
let airline#extensions#tabline#ignore_bufadd_pat =
      \ '\c\vgundo|undotree|vimfiler|tagbar|nerd_tree'

" Airline-theme
let g:airline_theme = "onedark"
let g:airline_powerline_fonts = 1

" Indent-guides
let g:indent_guides_enable_on_vim_startup = 1

" Auto-indent
" # Define custom formartter for php (uses phpcbf)
" let g:formatdef_use_phpcbf = '"phpcbf"'
" let g:formartter_php = ["use_phpcbf"]
" let g:autoformat_verbosemode=1
" autocmd BufWrite * :Autoformat
