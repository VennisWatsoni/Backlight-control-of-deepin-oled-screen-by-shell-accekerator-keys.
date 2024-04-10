# Backlight-control-of-deepin-oled-screen-by-shell-accekerator-keys.

#安装bc（shell的算数运算）

sudo apt-get install -y  bc 

#测试shell脚本是否有效
sh /yourfile/light-.sh

sh /yourfile/light+.sh

#将脚本移动到合适的目录下如/usr/local/bin

sudo mv light-.sh /yourfile

sudo mv light+.sh /yourfile

#修改deepin设置>键盘>快捷键>自定义+
#添加命令sh /yourprofile/light+.sh
#绑定快捷键
#light-同上

#修改请参考脚本内的注释
#如有问题敬请斧正
