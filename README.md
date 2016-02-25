# Installation

```
$ mv ~/.vimrc ~/.vimrc.bak
$ mv ~/.vim ~/.vim.bak
$ git clone https://github.com/centsent/vimrc.git ~/vim
$ ln -s ~/vim ~/.vim
$ ln -s ~/.vim/.vimrc ~/.vimrc
```
#`YouCompleteMe`Config
 (Github)[https://github.com/Valloric/YouCompleteMe]
```
C++和js自动补全。 --clang-completer 为c++补全,需要安装高版本clang工具
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --tern-completer
```

#`tern-for-vim`Config
需要进行一次配置，不然会提示出错
```
cd ~/.vim/bundle/tern-for-vim
npm install tern
```


#快捷键列表
* leader f : 打开NERDTree列表
* leader p : buffer prefix
* leader n : buffer next
* leader w : [Esc]w<CR>
* leader q : [Esc]q<CR>
* Ctrl+f   : AutoFormat 自动格式化js代码
* leader leader w :EasyMotion 向下跳转，之后输入屏幕上高亮的target即可
* leader j : 行级向下跳转
* leader k : 行级向上跳转
* leader h : 行内跳转向前
* leader l : 行内跳转向后
