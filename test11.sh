#---------------
# 求n的阶乘
# TKK 2019/12/11
#---------------

#!/bin/bash

#递归实现失败，结果总为0
# Factorial(){
#     local i=$1

#     if [ $i -eq 0 ]
#     then
#         rtn=1
#     else
#         Factorial `expr $i - 1`
#         rtn=`expr $rtn \* $i`
#     fi
#     return $rtn
# }


#循环实现
sum=1
for i in `seq 1 10`
do
    sum=`expr $sum \* $i`
done

echo "10的阶乘等于$sum"

