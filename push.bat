set filename=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
set "filename=%filename: =0%"

set "content=%filename%"
set /p "content=�������ύ˵����"

set "file=."
set /p "file=��������Ҫ�ύ���ļ���Ŀ¼��ֱ�ӻس���Ϊ��ǰĿ¼���������ݣ�"

git add %file%
git commit -m %content%
git push

pause