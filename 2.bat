Set per1=OneFloder
Set per2=TwoFloder
cd c:\ && mkdir %per1%
cd c:\%per1% && mkdir %per2%
cd c:\%per2%
set /P func1=Enter the Anything 1: 
set /P func2=Enter the Anything 2:
set /P func3=Enter the Anything 3:
echo "Info1" > %func1%.txt
echo "Info2" > %func2%.txt
echo "Info3" > %func3%.txt
copy %func1%.txt + %func2%.txt + %func3%.txt all.txt && move all.txt c:\%per1% && cd .. && type all.txt
set /P n1=Plz, enter first num: 
set /P n2=Plz, enter second num:
set /A su=(%n1%*%n2%+18/2-1)%3
echo echo %su% > c:\users\Kliker\bb2.bat
start c:\users\Overkliker\bb2.bat