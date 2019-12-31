if &compatible
  set nocompatible
endif

" Load packager only when you need it
function! PackagerInit() abort
  packadd vim-packager
  call packager#init()
  call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })
  call packager#add('junegunn/fzf', { 'do': './install --all && ln -s $(pwd) ~/.fzf'})
  call packager#add('junegunn/fzf.vim')
  call packager#add('Shougo/deoplete.nvim')
  call packager#add('autozimu/LanguageClient-neovim', { 'do': 'bash install.sh' })
  call packager#add('morhetz/gruvbox')
  call packager#local('~/my_vim_plugins/my_awesome_plugin')

  "Loaded only for specific filetypes on demand. Requires autocommands below.
  call packager#add('kristijanhusak/vim-js-file-import', { 'do': 'npm install', 'type': 'opt' })
  call packager#add('fatih/vim-go', { 'do': ':GoInstallBinaries', 'type': 'opt' })
  call packager#add('phpactor/phpactor', { 'do': 'composer install', 'type': 'opt' })
  call packager#add('neoclide/coc.nvim', { 'do': function('InstallCoc') })
endfunction

function! InstallCoc(plugin) abort
  exe '!cd '.a:plugin.dir.' && yarn install'
  call coc#add_extension('coc-eslint', 'coc-tsserver', 'coc-pyls')
endfunction

command! PackagerInstall call PackagerInit() | call packager#install()
command! -bang PackagerUpdate call PackagerInit() | call packager#update({ 'force_hooks': '<bang>' })
command! PackagerClean call PackagerInit() | call packager#clean()
command! PackagerStatus call PackagerInit() | call packager#status()

"Load plugins only for specific filetype
augroup packager_filetype
  autocmd!
  autocmd FileType javascript packadd vim-js-file-import
  autocmd FileType go packadd vim-go
  autocmd FileType php packadd phpactor
augroup END
