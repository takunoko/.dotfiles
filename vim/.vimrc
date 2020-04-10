"ʸ���Υ��󥳡��ɤ� utf-8 ����ʤ��ȡ�help��̵��loooooop�ˤʤ��ǽ������
"�ѹ�������ϡ�$HOME/.vim/bundle/vimdoc-ja/doc/tags-ja ��1���ܤ��ѹ���

"===================================-
"�����������������ƥ�����
"===================================-
	"�Хå����åץե������Ĥ���ǥ��쥯�ȥ�
	set backupdir+=$HOME/.dotfiles/vim
	"����åץե������ѤΥǥ��쥯�ȥ�
	set directory+=$HOME/.dotfiles/vim
	"��Ƭ��;����� Tab ���Ǥ�����ȡ�'shiftwidth' �ο���������ǥ�Ȥ��롣
	set smarttab
	"Visual block�⡼�ɤǥե꡼���������ͭ���ˤ���
	set virtualedit=block
	"���ޥ�ɥ饤���䴰����Ȥ��˶������줿��Τ�Ȥ�
	set wildmenu
	"������ɥ��������Ĺ���Ԥ��ޤ��֤��ơ����ιԤ�³����ɽ������
	set wrap
	" OSTYPE �˸��ߤ�OS����������
	" Darwin \n"�ʤ�Mac
	" Linux\n"�ʤ�linux
	let OSTYPE = system('uname')
	" ��󥯤������Ƥ򥯥�åץܡ��ɤ˾�˥��ԡ�
	" set guioptions+a "GUI�С�����������
	set clipboard+=autoselect "CUI�С�����������
"================================
"				�����˴ؤ�������
"================================
	"��ʸ���Ǹ����λ�����ʸ����ʸ������̤��ʤ���
	set ignorecase
	"��ʸ����������Τ߶���
	set smartcase

"================================
"������������ɽ������
"================================
	"���ѥ��ڡ���(��)���в�
	highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
	au BufNewFile,BufRead * match ZenkakuSpace /��/
	" �����ȹԤ˲��������
	set cursorline
	"���ֹ�ɽ��
	set number
	"���ԥ����ɤ�ưǧ��
	set fileformats=unix,dos,mac
	"�ӡ��ײ����Ĥ餵�ʤ�
	set vb t_vb=
	"�������ԤΥ���ǥ�Ȥ򸽺߹Ԥ�Ʊ���ˤ���
	set autoindent
	"�Ĥ���̤����Ϥ��줿�Ȥ����б������̤�ɽ������
	set showmatch
	"�������ʸ�������äƤ⡢��������ΰ��֤�����ʤ��褦�ˤ���
	set ambiwidth=double
	"���ץ�å���(��ư���Υ�å�����)��ɽ�����ʤ�
	"set lazyredraw
	"�����ȥ��ɽ��
	set title
	"������Υ��ޥ�ɤ򥹥ơ�������ɽ����
	set laststatus=2
	"������ʸ�ο����ѹ�
	highlight Comment ctermfg=DarkCyan
	"����ɽ������
	syntax on
	"BackSpace��ʸ����ä���褦�ˤ��롣
	set backspace=2
	"���ߤΥ⡼��ɽ��
	set showmode
	"ʸ�������ɤ򤽤�餷���Τ��ɤ߹��ࡣ
	" �ǽ��utf-8������ȡ���ˤ�����ɤ󤸤㤦�������뤱��...
	set encoding=utf-8
	set fileencodings=utf-8,ucs-bom,euc-jp,iso-2022-jp,sjis,cp932,default
	" Shift + ����ǥ�����ɥ����������ѹ�
	nnoremap <S-Left>  <C-w><<CR>
	nnoremap <S-Right> <C-w>><CR>
	nnoremap <S-Up>    <C-w>-<CR>
	nnoremap <S-Down>  <C-w>+<CR>

""=============================
"��������������ǥ��
"=============================
	"���֤��б��������ο�
	set tabstop=2
	"���֤�Хå����ڡ����λ��������Խ����򤹤�Ȥ��ˡ����֤��б��������ο�
	set softtabstop=2
	"����ǥ�Ȥγ��ʳ��˻Ȥ������ο�
	set shiftwidth=2
	" ���֤���������Ȥ�������˶����Ȥ�ʤ�
	" set noexpandtab
	" ���֤򥹥ڡ����ǻȤ�
	set expandtab
	"�б�����()������
	""inoremap ( ()<Left>
	"�б�����{}������
	""inoremap { {}<Left>
	"�б�����<>������
	""inoremap < <><Left>
	"�б�����""������
	""inoremap " ""<Left>

"====================================
"�����⡼�ɻ������ơ������饤��ο����ѹ�
"====================================
"���Τؤ�����꤬�Ť�
	let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'
	function! s:GetHighlight(hi)
		redir => hl
		exec 'highlight '.a:hi
		redir END
		let hl = substitute(hl, '[\r\n]', '', 'g')
		let hl = substitute(hl, 'xxx', '', '')
		return hl
	endfunction
"==========================
"�������������ط�
"==========================
	"���ޥ�ɡ������ѥ������100�Ĥޤ�����˻Ĥ�
	set history=100
	"�����λ�����ʸ����ʸ������̤��ʤ�
	set ignorecase
	"�����λ�����ʸ�����ޤޤ�Ƥ�����϶��̤��Ƹ�������
	set smartcase
	"�Ǹ�ޤǸ�����������Ƭ�����
	set wrapscan
	"�ޤꤿ����?
	set foldmethod=indent
	" ���٤Ƥθ����ˤĤ��ơ�������˸�������ñ�����̤�����˻��äƤ���褦�ˤ���
	nnoremap n nzz
	nnoremap N Nzz
	nnoremap * *zz
	nnoremap # #zz
	nnoremap g* g*zz
	nnoremap g# g#zz

"==========================
"�������硼�ȥ��å�����
"==========================
	" Esc��2�󲡤��ǥϥ��饤�Ⱦõ�
	nnoremap <ESC><ESC> :nohlsearch<CR><ESC>
	nmap <F9><F9> :q<CR>
	"�ե������ɽ�����ƥ����פ��䤹��
	nmap <F4> :Vexplore<CR>
	" <F4>�Ǻ���ʬ�䤷�ƥե����顼��ư
  noremap <C-j> <esc>
  noremap! <C-j> <esc>


"-------------------------------------------------------------------------------
" �ե�����μ��̤ˤ�äƥ��ޥ�ɤ�¹�
"-------------------------------------------------------------------------------
	" C�Υե������cindent�ˤ���
	autocmd Filetype c setl cindent
	autocmd Filetype cuda setl cindent
	autocmd Filetype cpp setl cindent
"-------------------------------------------------------------------------------
" �ե��������Υǥե���Ȥ򸫤䤹��
"-------------------------------------------------------------------------------
	" netrw�Ͼ��tree view
	let g:netrw_liststyle = 3
	" CVS��.�ǻϤޤ�ե������ɽ�����ʤ�
	let g:netrw_list_hide = 'CVS,\(^\|\s\s\)\zs\.\S\+'
	" 'v'�ǥե�����򳫤��Ȥ��ϱ�¦�˳�����(�ǥե���Ȥ���¦�ʤΤ������ؤ�)
	let g:netrw_altv = 1
	" 'o'�ǥե�����򳫤��Ȥ��ϲ�¦�˳�����(�ǥե���Ȥ���¦�ʤΤ������ؤ�)
	let g:netrw_alto = 1
"-------------------------------------------------------------------------------
"Tex��񤯤��������
"-------------------------------------------------------------------------------
	set grepprg=grep\ -nH\ $*
	let g:tex_flavor='latex'
	let g:Imap_UsePlaceHolders = 1
	let g:Imap_DeleteEmptyPlaceHolders = 1
	let g:Imap_StickyPlaceHolders = 0
	let g:Tex_DefaultTargetFormat = 'pdf'
	let g:Tex_FormatDependency_pdf = 'dvi,pdf'
	let g:Tex_FormatDependency_ps = 'dvi,ps'
	let g:Tex_CompileRule_pdf = 'ptex2pdf -l -ot "-synctex=1 -interaction=nonstopmode -file-line-error-style" $*'
	let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
	let g:Tex_CompileRule_dvi = 'platex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
	let g:Tex_BibtexFlavor = 'pbibtex'
	let g:Tex_MakeIndexFlavor = 'mendex $*.idx'
	let g:Tex_UseEditorSettingInDVIViewer = 1
	let g:Tex_ViewRule_pdf = 'open -a Preview.app'
	let g:Tex_ViewRule_ps = 'open'
	let g:Tex_ViewRule_dvi = 'open'

"-------------------------------------------------------------------------------
"�ץ饰������ɤ߹���
"-------------------------------------------------------------------------------
source ~/.dotfiles/vim/.vimrc.plugin
