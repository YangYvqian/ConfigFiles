# 解决不能访问github的问题

><b>烦恼：</b>github访问的时候，有时候不管用什么姿势访问都打不开,啊啊啊啊啊  

><b>其中一种情况:</b>github的IP地址不固定，一直在改变

><b>解决方法：</b>找到当前github最新的IP地址，把IP地址添加到hosts文件中，是可以解决访问不了的问题。因为github的IP地址不固定。当不管用什么姿势都访问不了的话，可以看看github的IP地址变了没，如果变了就把新的IP地址添加到hosts文件中即可。

><b>步骤：</b>
### 第一步：查看github网站ip地址：https://websites.ipaddress.com/github.com
![alt github网站IP地址页](/image/github-ip-search.jpg)
### 第二步：复制红框标注地方的IP地址添加到hosts文件中。（给出一下两种方法）
* <b>第一种：</b>你可以在C:\WINDOWS\system32\drivers\etc\目录下找到hosts文件，把IP地址和对应的网站域名一起添加进去。
   ![alt hosts文件](/image/host.jpg)
* <b>第二种：</b>你也可以用一个小脚本文件自动编辑hosts文件，运行脚本就可以向hosts文件中注入新的IP了。（比较方便）
  新建一个txt文件，名字随便起，把下面代码复制到新建的txt文件中，保存，然后把新建的txt文件后缀改成.bat(`如新建的是host.txt->把下面代码复制到host.txt文件中保存->修改host.txt文件为host.bat->运行host.bat即可看到注入成功`)

<b>注意：下面代码的IP地址一定换上你所查询的最新的IP地址</b>
    
    @echo off
    %1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
    cd /d "%~dp0"
    @echo off
    @echo 140.82.112.3 github.com>>C:\WINDOWS\system32\drivers\etc\hosts
    @ipconfig /flushdns
    @echo on
    @pause
    
 ![alt hosts文件](/image/hostbat.jpg)

 
