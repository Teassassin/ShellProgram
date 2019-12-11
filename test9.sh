#---------------
# 冒泡排序
# TKK 2019/12/11
#---------------

#!/bin/bash
#定义10个数的数组
arr=(2 4 6 3 10 9 1 5 8 7)
#排序前输出一次
echo ${arr[*]}
#冒泡排序
for((i=0; i<9; i++))
do
    for((j=0; j<`expr 9 - $i`; j++))
    do
        #-gt大于，-lt小于
        #-ge大于等于，-le小于等于
        if [ ${arr[$j]} -ge ${arr[`expr $j + 1`]} ]
        then
            tmp=${arr[$j]}
            arr[$j]=${arr[`expr $j + 1`]}
            arr[`expr $j + 1`]=$tmp
        fi
    done
done
#排序后输出一次
echo ${arr[*]}

