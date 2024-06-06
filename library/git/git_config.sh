# #!/bin/bash

# https://www.scootersoftware.com/support.php?c=kb_vcs.php

#   git config --global --add merge.tool bcompare
#   git config --global --add mergetool.bcomparepath "/usr/bin/bcompare"
#   git config --global --add mergetool.bcompare.trustExitCode false
#   git config --global --add mergetool.prompt false
#  
#  git config --global --add diff.guitool bcompare
#  git config --global --add difftool.bcompare.path "/usr/bin/bcompare"
#  git config --global --add difftool.bcompare.trustExitCode false
#  git config --global --add difftool.prompt false
# git config --global url."https://$".insteadOf "https://github.com"


# git config –global user.email si.mirchev@gmail.com 
# git config --global user.name "StefanMirchev"
# git config --global user.pass 0987abcdl234
# git config  --list  - проверка настройките

 git config --global diff.tool bc3
 git config --global difftool.bc3.trustExitCode true
 git config --global difftool.prompt false
 
 git config --global --add mergetool.bcomparepath "/usr/bin/bcompare"
 git config --global --add mergetool.prompt false
 
 git config --global merge.tool bc3
 git config --global merge.conflictstyle bc3 
 git config --global mergetool.bc3.trustExitCode true
 
 git config --global UC.defdiffmerge yes
 git config --global UC.defdiff yes
 
 git config --global core.ed "~/work/library/sublime/sublime-term.sh"

sleep 3