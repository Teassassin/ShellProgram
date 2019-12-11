#---------------
# menu界面
# TKK 2019/12/11
#---------------

#!/bin/bash

#界面
printf "Number\t\tName\t\tFor Linux Menu\n"
printf "1\t\texit\t\tleave\n"
printf "2\t\tvi\t\tedit a file\n"
printf "3\t\tdate\t\tdate\n"
printf "4\t\tcal\t\tcalender\n"
printf "5\t\twho\t\tlist the users\n"
printf "6\t\tls\t\tlist the files in this directory\n"
printf "7\t\tcat\t\tdisplay a file on the screen\n"
printf "Please input a number or a name for the action you wish: "
#读取选择
read choice
case $choice in
1)
    exit
    ;;
2)
    vi
    ;;
3)
    date
    ;;
4)
    cal
    ;;
5)
    who
    ;;
6)
    ls
    ;;
7)
    #cat需选择文件
    printf "Please input the filename: "
    read filename
    cat $filename
    ;;
esac