@echo off
echo 正在清理可能存在的旧版本...
if exist rime-ice rmdir /s /q rime-ice

echo 正在克隆最新版雾凇拼音...
git clone --depth=1 https://github.com/iDvel/rime-ice.git rime-ice

echo 清理无用的 .git 隐藏文件夹（减小打包体积）...
if exist rime-ice\.git rmdir /s /q rime-ice\.git

echo 拉取完成！
