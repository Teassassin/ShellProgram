#---------------
# 金字塔
# TKK 2019/12/11
#---------------

#!/bin/bash

#塔高由第一个参数决定
h=`expr $1 - 1`
#seq表示产生0到h的序列
for i in `seq 0 $h`
do
    #第一个判断条件
    con1=`expr $h - $i - 1`
    for((j=0; j<=$con1; j++))
    do
        #先打印空格
        printf ' '
    done
    #第二个判断条件
    con2=`expr $i + 1`
    for((j=0; j<$con2; j++))
    do
        #打印左半部分
        printf `expr $i - $j`
    done
    for((j=1; j<=$i; j++))
    do
        #打印右半部分
        printf $j
    done
    #换行
    echo ""
done