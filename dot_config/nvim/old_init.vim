
"###################      CONTENT INDEX     ################
" Line  | Plugin Declaration
" 28    | Deoplete
" 31    | Auto-Pairs
" 34    | EditorConfig
" 41    | Emmet
" 44    | CtrlP
" 47    | Easy Motion
" 51    | Airline
" 60    | Multi-cursors
" 63    | ALE
" 74    | DevIcons
" 76    | Vim-startify
" 78    | Carbonized
" 80    | Coc-nvim
" 83    | Vim-auto-save
"
"
" ##########################################################
" ############# Vim.plug - Plugin Declaration ##############
" ##########################################################
"
" Plugin Name - Short Description
"	        - Long Description
"	        - List:
"	        > bullet point
"	        > another bullet point
"	        ** NB
" Plug    - plugin declaration
"
" ###### INDEX ######
" WUC   - Words Under Cursor
" FL    - Open File
" SHC   - Shortcuts
" +     - Adds
" :CMD  - Plugin Command
" DEF	  - Definition
" CUR	  - Current
" PRV	  - Previous
"
call plug#begin('~/.local/share/nvim/plugged')
	" Deoplete	     - Code Completion Engine
	Plug 		         'Shougo/deoplete.nvim',{'do':':UpdateRemotePlugins'}
	" Auto-Pairs     - Auto Quote/Parenthesis Close
	Plug 		         'jiangmiao/auto-pairs'

	" EditorConfig	 - MULTI-EDITOR - Code formatting config:
	" 	 	           > Charset
	" 	 	           > Indent style & size
	" 	 	           > Trim trailing white space
	" 	 	           > Etc
	Plug 		         'editorconfig/editorconfig-vim'

	" Emmet 	       - HTML Expansion
	Plug 		         'mattn/emmet-vim'

	" CtrlP 	       - Fuzzy file,buffer & tag finder
	Plug 		         'ctrlpvim/ctrlp.vim'

  " Denite         -Fuzzy file finding, file management, project searching
  Plug             'Shougo/denite.nvim'
  "
	" Easy Motion 	 - Text Navigation
	"		             - + SHC to navigate visible text
	Plug 		         'easymotion/vim-easymotion'

	" Airline      	 - Info Tabline
	" 		           - + Bar(bottom) showing :
	" 		           > CUR mode
	" 		           > CUR git branch
	" 		           > FL Encoding
	" 		           > CUR line
	" 		           > etc
	Plug		         'bling/vim-airline'
  " Airline Themes - Make airline look good
  Plug             'vim-airline/vim-airline-themes'
  " Multi-cursors	 - Multi cursor
	Plug		         'terryma/vim-multiple-cursors'

	" ALE 	         - Async Lint Engine
	" 		           > Lints CURR FL via external LSP linters
	" 		           > Displays errors and warnings
	"		             > Fixes files with the :ALEFix
	"		             > Autocompletion from LSP linters
	"		               ** Intergrates with Deoplete
	"		             > Go to DEF of WUC :ALEGoToDefinition
	"		             > Find references of WUC :ALEFindReferences
	"		             > Symbol serach :ALESymbolSearch
	Plug		         'w0rp/ale'
	" DevIcons	     - Adds filetype icons
	Plug 		         'ryanoasis/vim-devicons'
  " Vim-startify   - Fancy Start Screen
  Plug             'mhinz/vim-startify'
  " Carbonized     - Color theme
  Plug             'nightsense/carbonized'
  " Coc-nvim       - Intellisense engine
  "                - A completion framework and LSP
  Plug             'neoclide/coc.nvim',{'branch':'release'}
  " Vim-auto-save  - Automatically save files to disk
  Plug             '907th/vim-auto-save'
  " NERDTree       - Proper File Browser
  Plug             'scrooloose/nerdtree'
  " Vifm           - use vifm as file manager
  Plug             'vifm/vifm.vim'
  " Vim-Polyglot   - syntax highlighter
  Plug             'sheerun/vim-polyglot'
  " Vim-spacectrl  - A solution to manage:
  "                > tabs,buffers and files
  "                > workspaces/sessions
  "                > fuzzy finder
  "                > bookmarks
  Plug             'vim-ctrlspace/vim-ctrlspace'
  " Tender         -24bit colorscheme
  "Plug             'jacoborus/tender.vim'

  " Onedark        - Colorscheme
  Plug             'joshdick/onedark.vim'
call plug#end()


" ##########################################################
" #############    Vim.plug - Plugin Config   ##############
" ##########################################################
" Plugin Name
"  # config documentation
"  config

" Deoplete
"	# Enable at startup
	let g:deoplete#enable_at_startup = 0

" Vim-startify
" MUST BE CONFIGURED BEFORE NERDTree
" # Number of files dislayed
  let g:startify_files_number = 5
" # Dir lists displayed on start screen
  let g:startify_list = [
    \ {'type':'dir',      'header' : [' Most recently used files in current directory:']},
    \ {'type':'files',    'header' : [' Most recently used files:']},
    \ {'type':'sessions',  'header' : [' Saved sessions']},
    \ ]
" # RESEARCH NEEDED
"  let g:startify_update_oldfiles = 1
" # Open startify when vim starts if no files were specified
"  augroup StartPage
"    autocmd vimenter * if !argc() | Startify | endif
"    autocmd TabNewEntered * if !argc() | Startify | endif
  augroup END

" NERDTree (proper file browser)
" # Toggle NERDTree
"  nmap <c-f> :NERDTreeToggle<cr>
" # Start NERDTree in selected input dir
"  autocmd StdinReadPre * let s:std_in=1
"  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"  autocmd TabNewEntered * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" Start NERDTree if no selected input dir2
"  autocmd StdinReadPre * let s:std_in=1
"  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"  autocmd TabNewEntered * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" show on the right :)
"  let g:NERDTreeWinPos = 'right'
" Auto change directory
"  let g:NERDTreeChDirMode = 2
" Auto clean buffer of deleted files
"  let g:NERDTreeAutoDeleteBuffer = 1
" Make it look pretty
"  let g:NERDTreeMinimalUI = 0
"  let g:NERDTreeDirArrowExpandable  = '▸'
"  let g:NERDTreeDirArrowCollapsible = '▾'
" # Remap open key
"  let g:NERDTreeMapCustomOpen = '<m-g>'
"  autocmd FileType nerdtree nmap <buffer> <CR> <m-g> <s-c>
" # Close Vim if the only window left open is NERDTree
"  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" Netrw (File Browser)
"" # Disable banner
"  let g:netrw_banner = 0
"" # Set list style to tree structure
"  let g:netrw_liststyle = 3
"" # Open file in new split window
"  let g:netrw_browse_split = 4
" # Slpit new window vertically
"  let g:netrw_altv = 1
" # Set window size to 15%
"  let g:netrw_winsize = 15
" # Open on startup and on new tab
"  augroup ProjectDrawer
"    autocmd!
"    autocmd vimenter * :Vexplore
"    autocmd TabNewEntered * :Vexplore
"  augroup END

"  EditorConfig
"	# config @ ~/.editorconfig

" Emmet
 	" # config N/A

" CtrlP
"	# Map to Ctrl+P
	"let g:ctrlp_map = '<c-p>'
	"let g:ctrlp_cmd = 'CtrlP'
" Vim-spacectrl
" # Map to Ctrl+P
"  let g:CtrlSpaceDefaultMappingKey = '<c-p>'


" Coc-nvim
" # if hidden is not set, TextEdit might fail.
  set hidden

" # Some servers have issues with backup files, see #649
"  set nobackup
"  set nowritebackup

" # Better display for messages
"  set cmdheight=2

" # You will have bad experience for diagnostic messages when it's default 4000.
"  set updatetime=300

" # don't give |ins-completion-menu| messages.
"  set shortmess+=c

" # always show signcolumns
"  set signcolumn=yes

" # Use tab for trigger completion with characters ahead and navigate.
" # Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"  inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"     \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"  function! s:check_back_space() abort
"    let col = col('.') - 1
"    return !col || getline('.')[col - 1]  =~# '\s'
"  endfunction

" # Use <c-space> to trigger completion.
"  inoremap <silent><expr> <c-space> coc#refresh()

" # Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" # Coc only does snippet and additional edit on confirm.
"  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" # Use `[c` and `]c` to navigate diagnostics
"  nmap <silent> [c <Plug>(coc-diagnostic-prev)
"  nmap <silent> ]c <Plug>(coc-diagnostic-next)

" # Remap keys for gotos
"  nmap <silent> gd <Plug>(coc-definition)
"  nmap <silent> gy <Plug>(coc-type-definition)
"  nmap <silent> gi <Plug>(coc-implementation)
"  nmap <silent> gr <Plug>(coc-references)

" # Use K to show documentation in preview window
"  nnoremap <silent> K :call <SID>show_documentation()<CR>

"  function! s:show_documentation()
"    if (index(['vim','help'], &filetype) >= 0)
"      execute 'h '.expand('<cword>')
"    else
"      call CocAction('doHover')
"    endif
"  endfunction

" # Highlight symbol under cursor on CursorHold
"  autocmd CursorHold * silent call CocActionAsync('highlight')

" # Remap for rename current word
" nmap <leader>rn <Plug>(coc-rename)

" # Remap for format selected region
"  xmap <leader>f  <Plug>(coc-format-selected)
"  nmap <leader>f  <Plug>(coc-format-selected)

"  augroup cocgroup
"    autocmd!
  " # Setup formatexpr specified filetype(s).
"    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " # Update signature help on jump placeholder
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"  augroup end

" # Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
"  xmap <leader>a  <Plug>(coc-codeaction-selected)
"  nmap <leader>a  <Plug>(coc-codeaction-selected)

" # Remap for do codeAction of current line
"  nmap <leader>ac  <Plug>(coc-codeaction)
" # Fix autofix problem of current line
"  nmap <leader>qf  <Plug>(coc-fix-current)

" # Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
  "nmap <silent> <TAB> <Plug>(coc-range-select)
  "xmap <silent> <TAB> <Plug>(coc-range-select)
  "xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" # Use `:Format` to format current buffer
"  command! -nargs=0 Format :call CocAction('format')

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

" Tender
" # Enable true color
  set termguicolors

" # Enable Theme
  syntax enable
  colorscheme onedark


" Vim-auto-save
" # Disbale on startup
  let g:auto_save = 1
" # Enable for specific files
  augroup autosavegroup
    au!
    au FileType markdown,json,javascript,python,html,css,text let b:auto_save = 1
  augroup END
" # relies on CursorHold event and modifies updatetime option to 200ms
" # prevent from modifing updatetime
  let g:auto_save_no_updatetime = 1
" # enable in insert mode
  let g:auto_save_insert_mode = 0

" Airline
" # Enable the list of buffers
"  let g:airline#extensions#tabline#enabled = 1
" # Show just the filename
"  let g:airline#extensions#tabline#fnamemod = ":t"
" # Hide section_z (percentage,line count etc)
"  let g:airline_section_z = 0
" Airline-theme
"  let g:airline_theme = "onedark"
"  let g:airline_powerline_fonts = 1
" ##########################################################
" #############      Vim Behaviour Config     ##############
" ##########################################################
" # Map the leader key
  "let mapleader = '\<SPACE>'
" # Enable Number display
  set number
" # Disable column/line number in statusline
  set noruler
" # Use CTRL+S to Save
  nmap <c-s> :w<CR>
  imap <c-s> <Esc>:w<CR>a
" # Close Windows
  nmap <c-c> :q<cr>
  imap <c-c> :q<cr>
" # Allows buffers to be hidden if youve modified it(required)
  "set hidden
" # Use TT to open new buffer tab,replaces :tabnew
  map <silent> tt :tabnew<CR>
" # Move to the next tab
  map <S-PageDown> :tabn<CR>
" # Move to the prev tab
  map <S-PageUp> :tabp<cr>
" # Move to the next buffer
  map <c-PageDown> :bnext<cr>
" # Move the previous tab
  map <c-PageUp> :bprevious<cr>
:q" # Close the current buffer and move to the previous one
  map <S-q> :bp<BAR>bd #<cr>
" # Show all open buffers and their status
  map <S-t> :ls<cr>
" # Refresh Neovim
  map <m-r> :so%<CR>
" # Always open help window in new tab
"  cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'
