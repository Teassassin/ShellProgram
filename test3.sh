#---------------
# 查找统计
# TKK 2019/12/11
#---------------

#!/bin/bash
#创建users.txt用于写入包含aa的用户
touch users.txt
file="/etc/passwd"
#wc统计行数 cut以第一个空格截取
line=`wc -l ${file} | cut -d" " -f1`

#循环line次
for i in `seq 1 ${line}`
do
    #从第i行head，到tail行尾，以第一个:截取
    username=`head -${i} ${file} | tail -l | cut -d: -f1`
    #如果包含aa
    if [[ ${username} == *"aa"* ]]
    then
        #写入txt
        echo ${username} > users.txt
    fi
done

#创建txt保存/bin中包含ls的文件
touch ls_files.txt
ls_files=`find /bin/ *ls*`
#文件置空重新写入，echo不换行
echo -e "\c" > ls_files.txt
for i in ${ls_files}
do
    #从第6个开始截取，为删掉/bin/开头
    #追加至txt
    echo ${i:5} >> ls_files.txt
done

touch commandview
#分别计算文件数
filenums1=`ls -l /bin/ | wc -l`
filenums2=`ls -l /sbin/ | wc -l`
#求文件数和
filenums=`expr ${filenums1} + ${filenums2}`
#显示文件数
echo ${filenums}
#两个目录一块列出
filenames=`ls /bin/ && ls /sbin/`
#写入commandview
echo ${filenames} > commandview