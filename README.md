# Installation

```
$ mv ~/.vimrc ~/.vimrc.bak
$ mv ~/.vim ~/.vim.bak
$ git clone https://github.com/centsent/vimrc.git ~/vim
$ ln -s ~/vim ~/.vim
$ ln -s ~/.vim/.vimrc ~/.vimrc
```
#`YouCompleteMe`Config
[Github](https://github.com/Valloric/YouCompleteje)
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

#`vim-autoformat`Config
vim-autoformat提供了多种语言的自动排版功能，若药对js进行排版，需要安装js-beautify
js-beautify是一个npm安装的程序
`npm install -g js-beautify`

#快捷键列表
* leader f : 打开NERDTree列表,在NERDTree中可以按m进行功能项选择
* leader p : buffer prefix
* leader n : buffer next
* leader w : [Esc]w<CR>
* leader q : [Esc]q<CR>
* leader leader w :EasyMotion 向下跳转，之后输入屏幕上高亮的target即可,下同
* leader leader b :EasyMotion  向下跳转
* leader j : 行级向下跳转
* leader k : 行级向上跳转
* leader h : 行内跳转向前
* leader l : 行内跳转向后
* leader jd : 跳转到定义
* Ctrl+j : 向下移动区域
* Ctrl+k : 向上移动区域
* Ctrl+p : 模糊查找文件
* Ctrl+f   : AutoFormat 自动格式化js代码
* Normal模式下用tab键切换panel

##前端开发组快捷键
[emmet](https://github.com/mattn/emmet-vim)
> emmet 的leader键为Ctrl+y

