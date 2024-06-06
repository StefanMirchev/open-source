#!/bin/bash
'1. Clone Download master branch on PC                                                        ^ 3' 'black' '#DEC27B' 'Monospace  13' \
' a) Click over name repoitorie -> , Click over -> https or SSh -> Code                       ^ 4' 'black' '#DEC27B' 'Monospace  13' \
'    Copy like ->  git@github.com:StefanMirchev/accounting.git                                ^ 5' 'black' '#DEC27B' 'Monospace  13' \
' b)^ git clone git@github.com:StefanMirchev/accounting.git                                   ^ 7' 'black' '#DEC27B' 'Monospace  13' \
' c)^ ls ~/work/git                                                                           ^ 8' 'black' '#DEC27B' 'Monospace  13' \
' d)^ cd ~/work/git                                                                           ^ 9' 'black' '#DEC27B' 'Monospace  13' \
' user  -> si.mirchev@gmail.com   pass ->  0987abcdl234                              ^10' 'black' '#DEC27B' 'Monospace  13' \
'2.Create new branch                                                                          ^10' 'black' '#DEC27B' 'Monospace  13' \
'  git branch b123 -> create new branch - branch b123 is all the same branch from create      ^11' 'black' '#DEC27B' 'Monospace  13' \
'3.Work only in branch b123 -                                                  ^12' 'black' '#DEC27B' 'Monospace  13' \
'4. Edit index.html /edit b123 branch/ -> $ed index.html                                      ^13' 'black' '#DEC27B' 'Monospace  13' \
'A. Before add. / commit                                                                      ^14' 'black' '#DEC27B' 'Monospace  13' \
'a) -> write branch                                                                  ^15' 'black' '#DEC27B' 'Monospace  13' \
'   After file changes, checkout to another branch is not allow before add / comit            ^16' 'black' '#DEC27B' 'Monospace  13' \
'b) Beyond Compare = BC                                                                       ^17' 'black' '#DEC27B' 'Monospace  13' \
'c) git difftool                                                                              ^18' 'black' '#DEC27B' 'Monospace  13' \
'  git difftool = git difftool b123 -> showes index.html in left side BC form master          ^19' 'black' '#DEC27B' 'Monospace  13' \
'  branch and b123 branch in right side BC                                                    ^20' 'black' '#DEC27B' 'Monospace  13' \
'  Unnecessary Commands :                                                                     ^21' 'black' '#DEC27B' 'Monospace  13' \
'( git difftool b123 master -> showes index.html form master branch in left side BC           ^22' 'black' '#DEC27B' 'Monospace  13' \
'  git difftool master b123 -> showes index.html form master branch in right side BC          ^23' 'black' '#DEC27B' 'Monospace  13' \
'  git difftool master -> showes index.html form b123 branch in right side BC  )              ^24' 'black' '#DEC27B' 'Monospace  13' \
'd) git mergetool                                                                             ^25' 'black' '#DEC27B' 'Monospace  13' \
'  git merge -> Already up-to-date -> means that all the changes from the branch you’re       ^26' 'black' '#DEC27B' 'Monospace  13' \
'  trying to merge have already been merged to the branch you’re currently on.                ^27' 'black' '#DEC27B' 'Monospace  13' \
'4. All changes in branch b123 finish with gid add and git commit -M  "something expl." all   ^28' 'red'   '#DEC27B' 'Monospace  13' \
'5. Merge change in master from loc-b123                                                      ^29' 'black' '#DEC27B' 'Monospace  13' \
