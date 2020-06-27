if !has('python3')
    finish
endif

let s:path = expand('<sfile>:p:h')

python3 << eopython
import os
import site
import sys
import vim

from searchvim.searchfile import searchfile
from searchvim.searchbuffer import searchbuffer
from searchvim.searchtags import searchtags
from searchvim.searchgrep import searchgrep
from searchvim.config import ins

sys.path.append(vim.eval('s:path'))
eopython

nmap<silent><leader>sf :py3 sf = searchfile()<cr>
nmap<silent><leader>sb :py3 sb = searchbuffer()<cr>
nmap<silent><leader>st :py3 st = searchtags()<cr>
nmap<silent><leader>sg :py3 sg = searchgrep()<cr>
