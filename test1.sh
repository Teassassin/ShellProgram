#---------------
# 批量创建用户
# TKK 2019/12/10
#---------------

#!/bin/bash

classes=("CS1801" "CS1802" "CS1803" "CS1804" "CS1805")
ids=1000

for class in classes
do
    #为每个班级添加组
    groupadd ${class}
    #控制循环，每个班200人
    item=1
    while(($item<=200))
    do
        #用户名为 班级-学号
        name="${class}-${ids}"
        #密码为班级后两位+学号
        password="${class:4:2}${ids}"

        #添加用户
        useradd -g ${class} ${name}
        #判断是否创建成功
        if [ $? -eq 0 ];then
            echo "User ${name} Created Successfully"
            echo "In Group ${class}"
        else
            echo "Failed to Create User ${name}"
        fi
        
        #设置密码
        echo ${password} | passwd --stdin ${name}
        #判断是否设置成功
        if [ $? -eq 0 ];then
            echo "User ${name} Password Set Successfully"
        else
            echo "Failed to Set ${name} Password"
        fi

        #循环变量++
        let "item++"
    done
done