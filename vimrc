" mojo-pairing-vim
" Copyright (C) 2014 Mother Jones
"
" This program is free software; you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation; either version 3 of the License, or
" (at your option) any later version.
"
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with this program; if not, write to the Free Software Foundation,
" Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA


" Get the path to the folder that contains this file
let s:vimrc_path=fnamemodify(resolve(expand('<sfile>:p')), ':h')

" Set the runtimepath to be the directory that contains this file and all of
" the system paths
exec 'set rtp=' . s:vimrc_path
exec 'set rtp+=' . s:vimrc_path.'/bundle/Vundle.vim'
set rtp+=$VIM/vimfiles
set rtp+=$VIMRUNTIME
set rtp+=$VIM/vimfiles/after

set nocompatible

filetype off     " required
call vundle#begin(s:vimrc_path.'/bundle')

Plugin 'gmarik/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'L9' " dependency for vim-autocomplpop
Plugin 'othree/vim-autocomplpop'
Plugin 'groenewege/vim-less'
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on " required
 
" First, load all of the files in the conf.d directory
for f in split(glob(s:vimrc_path.'/conf.d/*.vim'), '\n')
    exec 'source '.f
endfor

" Then load the user's personal config
if !empty(glob(s:vimrc_path.'/local.vim'))
    exec 'source '.s:vimrc_path.'/local.vim'
endif
