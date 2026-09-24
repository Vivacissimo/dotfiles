" ============================================================
" Vim Configuration
" ============================================================

" ------------------------------------------------------------
" 1. Basic
" ------------------------------------------------------------

" Vi 호환 모드 비활성화
set nocompatible

" 파일 타입 감지
filetype plugin indent on

" 문법 강조
syntax on

" 줄 번호 표시
set number

" 현재 줄 강조
set cursorline

" 현재 커서 위치 표시
set ruler

" 명령어 입력 중 표시
set showcmd

" 탭/버퍼가 변경되어도 저장하지 않은 내용 유지
set hidden

" 마우스 사용
set mouse=a

" 시스템 클립보드 사용 (지원되는 Vim에서 동작)
set clipboard=unnamedplus


" ------------------------------------------------------------
" 2. Indentation
" ------------------------------------------------------------

" Tab 입력 시 공백 사용
set expandtab

" Tab 너비
set tabstop=4

" 자동 들여쓰기 너비
set shiftwidth=4

" Tab 키 입력 시 이동 너비
set softtabstop=4

" 자동 들여쓰기
set autoindent

" 이전 줄의 문맥을 고려한 들여쓰기
set smartindent

" 기존 파일의 들여쓰기 방식 감지
set smarttab


" ------------------------------------------------------------
" 3. Search
" ------------------------------------------------------------

" 검색 중 일치하는 문자열 강조
set hlsearch

" 입력 중 실시간 검색
set incsearch

" 대소문자 무시
set ignorecase

" 대문자가 포함되면 대소문자 구분
set smartcase


" ------------------------------------------------------------
" 4. UI
" ------------------------------------------------------------

" 상태 표시줄 항상 표시
set laststatus=2

" 화면 스크롤 시 여유 줄 확보
set scrolloff=5

" 좌우 스크롤 여유 확보
set sidescrolloff=5

" 긴 줄 자동 줄바꿈
set wrap

" 단어 기준 줄바꿈
set linebreak

" 커서가 줄 끝을 넘어 이동할 수 없도록 설정
set virtualedit=


" ------------------------------------------------------------
" 5. Editing
" ------------------------------------------------------------

" 자동 완성 메뉴 표시
set wildmenu

" 백스페이스 자유롭게 사용
set backspace=indent,eol,start

" 괄호 쌍 강조
set showmatch

" 파일 인코딩
set encoding=utf-8

" 파일 저장 인코딩
set fileencoding=utf-8

" Swap 파일 비활성화
set noswapfile


" ------------------------------------------------------------
" 6. Colors
" ------------------------------------------------------------

" 터미널 True Color 사용
if has('termguicolors')
    set termguicolors
endif

" 기본 테마
colorscheme desert


" ------------------------------------------------------------
" 7. Key Mapping
" ------------------------------------------------------------

" Leader Key를 Space로 설정
let mapleader = " "

" 검색 강조 해제
nnoremap <leader>h :nohlsearch<CR>

" 저장
nnoremap <leader>w :w<CR>

" 종료
nnoremap <leader>q :q<CR>

" 저장 후 종료
nnoremap <leader>x :wq<CR>

" 파일 탐색기
nnoremap <leader>e :Explore<CR>


" ------------------------------------------------------------
" 8. YAML
" ------------------------------------------------------------

" YAML은 공백 2칸 사용
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" JSON은 공백 2칸 사용
autocmd FileType json setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Python은 공백 4칸 사용
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Shell Script는 공백 4칸 사용
autocmd FileType sh setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Terraform은 공백 2칸 사용
autocmd FileType terraform setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
