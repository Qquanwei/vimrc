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

## C++ 补全操作

* 在包管理器中安装最新版libclang(>=3.5)
* 编译参数加上 `--clang-completer`,如果出错则 指定`--system-clang`参数 尝试
* 拷贝`./test/cpp/.ycm_extra_conf.py`到项目工程，可适当修改其中的参数，加上本地include补齐路径
* 全局函数触发使用`::`,且将文件后缀改为`cpp`,`h`

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
* Ctrl+n   : MultilCursor  类似Sublime的多处编辑实现，Ctrl+n可以选择下一个相似的元素，然后同时编辑

* Ctrl+w { : 打开ctags中定义到预览窗口
* Ctrl+w z : 关闭预览窗口

* H : Normal模式下跳转到行首
* L : Normal模式下跳转到行尾
* K : Normal模式下使用man手册查询单词
* J : Normal模式下合并上下两行
* Normal模式下用tab键切换panel
* cc : 关闭quickfix
* co : 打开quickfix

##前端开发组快捷键
[emmet](https://github.com/mattn/emmet-vim)
<strong> emmet 的leader键为Ctrl+y</strong>

* 自动生成html框架
```
  html:5 在normal模式下Ctrl+y+, 键生成html基础框架
  ! 为html：5的简写形式
```
* 自动ID属性
```
  div#adiv -按下Ctrl+y+,键-> <div id="adiv"></div>
```
* 自动class属性
```
  div.div -按下Ctrl+y+,->  <div class="adiv"></div>
```
* 自动生成内嵌文本(快捷键省略，同上)
```
  div{hello,world}
  生成
  <div>hello,world</div>
```
* 通用属性自动生成
```
  div[fck='www.baioole.com']
  生成
  <div fck="www.baioole.com"></div>
```
* 二级元素生成
```
  div > a
  生成
  <div><a href=""></a></div>
```
* 同类元素生成
```
  div > a * 3 (中间没有空格)  
  生成
  <div>
    <a href=""></a>
    <a href=""></a>
    <a href=""></a>
  </div>
```
* 组合元素
```
  ul > (li{一个链接，无指向}+a) * 3 
  生成
  <ul>
    <li>一个链接，无指向</li>
    <a href=""></a>
    <li>一个链接，无指向</li>
    <a href=""></a>
    <li>一个链接，无指向</li>
    <a href=""></a>
  </ul>
```
* 自增元素 $
```
  ul > (li{一个链接，无指向$}+a) * 3 
  生成
  <ul>
    <li>一个链接，无指向1</li>
    <a href=""></a>
    <li>一个链接，无指hello,world向2</li>
    <a href=""></a>
    <li>一hello,world个链接，无指向3</li>
    <a href=""></a>
  </ul>
```
* 自动添加
```
 将一段文字添加外围标签。
 hello,world
 进入可视模式，选择hello,world文字，然后出发Ctrl+y+, 下方出现的Tag：键入命令即可。
 <div id="normaldiv">hello,world</div>
```
* 将段落缩为一行
```
  <ul>
    <li>一个链接，无指向1</li>
    <a href=""></a>
    <li>一个链接，无指hello,world向2</li>
    <a href=""></a>
    <li>一hello,world个链接，无指向3</li>
    <a href=""></a>
  </ul>
  进入可视模式，选择上段代码，按下Ctrl+y+m合并为一行
  <ul><li>一个链接，无指向1</li><a href=""></a><li>一个链接，无指hello,world向2</li><a href=""></a><li>一hello,world个链接，无指向3</li><a href=""></a></ul>
```

* 删除当前tag
```
  <div id="normaldiv">hello,div</div>
  Ctrl+y+k
  整行删除
```
* 自动添加图片尺寸
```
  <img src="https://ss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/logo/bd_logo1_31bdc765.pngu" alt="">
  在img标签内键入Ctrl+y+i
  <img src="https://ss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/logo/bd_logo1_31bdc765.png" width="540" height="258">
```

###ES6语法检查
```
npm install -g eslint babel-eslint eslint-plugin-react // 安装babel，eslint
cp ./.eslintrc ~/ //将eslintrc复制到家目录

//编辑.vimrc 将下面一行注释给去掉
let g:syntastic_javascript_checkers=['eslint']
```

###JS自动补齐
* js自动补齐由YCM+tern来实现。

####必要条件

* tern_for_vim 插件
* YCM 编译时的tern参数
* 启动tern服务 `nohup tern &`

####配置文件

* 将.tern_project拷贝到家目录即可,同时也可在项目目录中创建改文件实现特定补齐
* plugins中可加入node,angular,react 来实现特定补齐操作

###全文搜索
> VIM的全文搜索由vimgrep提供,可以在命令界面输入:vimgrep /partten/gj files来使用全文搜索。搜索结果会在quickfix中显示，可在正常模式下通过`co`打开`cc`关闭。
* g 表示搜索全部结果，而不是搜索第一个结果
* j 表示不自动跳转到第一条文件中
* files支持正则匹配,*.js 查找当前目录下所有js文件。*/*.js递归查找
###

* `./background-lbqb.jpg` 龙背上的骑兵CG图，可以的话可作为shell背景图像，可选

