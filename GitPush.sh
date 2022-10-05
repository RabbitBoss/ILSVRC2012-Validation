#!/bin/bash
# 上面中的 #! 是一种约定标记, 它可以告诉系统这个脚本需要什么样的解释器来执行;

echo "happy GitAutoPush Starting..."
time=$(date "+%Y-%m-%d %H:%M:%S")
git add .

read -t 30 -p "请输入提交注释:" msg

if  [ ! "$msg" ] ;then
    echo "[commit message] pushman: $(whoami), time: ${time}"
	git commit -m "pushman: $(whoami), time: ${time}"
else
    echo "[commit message] $msg, pushman: $(whoami), time: ${time}"
	git commit -m "$msg, pushman: $(whoami), time: ${time}"
fi

	
git push
echo " GitAutoPush Ending..."
