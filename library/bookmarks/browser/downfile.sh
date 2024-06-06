
bb=$(gdrive list --query "name contains 'comedy.txt'" --order "quotaBytesUsed desc" -m 3)
sleep 3 ; cc=${bb:67:33}
gdrive download --recursive $cc >> aaa.txt &