@echo off

set /p extensions="�t�@�C��������͂��ĉ������B(��: *.txt��txt�t�@�C���S��)"
set /p sepunit="�����P�ʂ��w�肵�Ă��������(��: 100)"
echo "������..."

set /a dirnum=0
set /a i=0
set /a amari=0

setlocal enabledelayedexpansion

for %%s in ("%extensions%") do (

    set /a amari=!i!%%!sepunit!

    if /I !amari! equ 0 (
        set /a dirnum=!dirnum!+1
        mkdir !dirnum!
    )

    set /a i+=1

    echo !dirnum!

    move "%%s" "!dirnum!\%%s"    

)

endlocal

echo �������I�����܂����
pause