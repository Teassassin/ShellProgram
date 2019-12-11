#---------------
# 进程管理
# TKK 2019/12/11
#---------------

#!/bin/bash

#显示系统当前正在运行的所有进程
ps aux | less
#显示当前终端正在运行的所有进程
ps a
#显示root正在运行的所有进程
ps -u root
#以优先级-16启动进程
sudo nice -n -5 find / -name ls* > tmp &
#显示该进程信息 4328是上一步获得的PID
ps -aux | grep 4328
#修改进程优先级
sudo renice -5 -p 4328
#强制杀死进程
kill -KILL 4328