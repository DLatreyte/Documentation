# Installation d'un environnement de développement en Python avec vim


### Installation de python avec MacPorts

Voir document dédié.


### Installation de vim

```
sudo port install vim +huge +python33
```


### Installation de pathogen.vim


Manage your 'runtimepath' with ease. In practical terms, pathogen.vim makes it super easy to install plugins and runtime files in their own private directories.

```
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```


### Installation de Python-mode


```
cd ~/.vim
cd bundle
git clone git://github.com/klen/python-mode.git
```


### Activation de pathogen


Dans `~/.vimrc`:

```
" Pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on
```

### Accès à la documentation

Depuis vim : `help pymode`


### Modification de quelques préférences


Dans `~/.vimrc`:

```
" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"
" Override run current python file key shortcut to Ctrl-Shift-e
let g:pymode_run_bind = "<C-S-e>"
" Override view python doc key shortcut to Ctrl-Shift-d
let g:pymode_doc_bind = « <C-S-d>"
```


### Installation de Vim colorschemes


Si pathogen est utilisé :

```
cd ~/.vim/bundle
git clone https://github.com/flazz/vim-colorschemes.git
mv vim-colorschemes colorschemes
```