@echo off
@echo // +----------------------------------------------------------------------
@echo // ^| 一键Git Push代码
@echo // +----------------------------------------------------------------------
@echo // ^| Blog ( https://blog.youngxj.cn )
@echo // +----------------------------------------------------------------------
@echo // ^| Author: Youngxj ^<1170535111^@qq.com^>
@echo // +---------------------------------------------

rem 获取时间
set filename=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
set "filename=%filename: =0%"

set "content=%filename%"
set /p "content=请输入提交说明："

set "file=."
set /p "file=请输入需要提交的文件或目录，直接回车则为当前目录下所有内容："

rem 调用git命令，如果没有找到git命令，说明环境变量未配置
rem 将git改成git安装目录下的git.exe也可以实现
git add %file%
git commit -m %content%
git push

pause