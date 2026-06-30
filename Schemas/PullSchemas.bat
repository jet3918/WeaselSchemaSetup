@echo off
echo 正在清理可能存在的旧版本...
if exist RimeIce rmdir /s /q RimeIce

echo 正在克隆最新版雾凇拼音...
git clone --depth=1 https://github.com/iDvel/rime-ice.git RimeIce

echo 清理无用的 .git 隐藏文件夹（减小打包体积）...
if exist RimeIce\.git rmdir /s /q RimeIce\.git

echo 拉取完成！
