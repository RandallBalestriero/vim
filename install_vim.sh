
# installation of pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle && \
git clone https://github.com/davidhalter/jedi-vim.git\
git clone https://github.com/terryma/vim-multiple-cursors.git\
git clone https://github.com/hhatto/autopep8.git\
git clone https://github.com/tpope/vim-commentary.git\
git clone https://github.com/junegunn/goyo.vim.git\
git clone https://github.com/ervandew/supertab.git

cp vimrc ~/.vimrc