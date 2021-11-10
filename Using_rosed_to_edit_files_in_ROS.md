## Using rosed 可以用来直接编辑通过包的名字
```
$ rosed [package_name] [filename]
$ rosed roscpp Logger.msg
```

```
tab 补全命令
$ rosed roscpp <tab><tab>
```

# Eidtor 使用默认编辑器
```
export EDITOR='nano -w'
export EDITOR='emacs -nw'
```