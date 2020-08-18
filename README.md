# play_bashscript
bash script を練習してみる

参考
- https://shellscript.sunone.me/parameter.html
- https://qiita.com/mohira/items/566ca75d704072bcb26f

# hoge.bash オプション付きのshellを書いてみる 

```
$ bash hoge.bash -a -b "a"
hoge.bash
"-a"オプションが指定されました。
"-b"オプションが指定されました。 
→値はaです。
```

```
$ bash hoge.bash -a  
hoge.bash
"-a"オプションが指定されました。
```

```
$ bash hoge.bash -b aa
hoge.bash
"-b"オプションが指定されました。 
→値はaaです。
```

```
$ bash hoge.bash -b  
hoge.bash: option requires an argument -- b
Usage: hoge.bash [-a] [-b VALUE]
```
