#---------------
# 创建目录和文件
# TKK 2019/12/10
#---------------

#!/bin/bash

#新建目录独立执行，防止破坏代码文件
mkdir test2
cd test2
#保存最后一步的所有文件名
touch files.txt
#控制外循环
item1=1
while((item1<=10))
do
    #控制内循环
    item2=1
    #目录名字
    dir="dir${item1}"
    #创建目录
    mkdir ${dir}
    #进入刚创建的目录
    cd ${dir}
    while((item2<=10))
    do
        filename="${dir}file${item2}.txt"
        #创建文本文件
        touch ${filename}
        chmod 755 ${filename}
        let "item2++"
    done
    #出来继续创建目录
    cd ..
    let "item1++"
done

#等待键盘录入
value=0
echo "请输入1~10之间的数："
#等待键盘录入
read value
#要找的目录
_dir="dir${value}"
cd ${_dir}
#修改后缀
for i in `ls`
do
    #${i%.*}表示删除最后一个.后面的字符串
    mv $i ${i%.*}.bak
done

#重定向至files.txt
ls>../files.txt
#切回目录
cd ..
#删除带value的目录和文件
rm -r *${value}*