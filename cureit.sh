#!/bin/bash

#----------------------------------[ Copyright ]----------------------------------------+
#Name: cureit                                                                           |
#Author: Bocharnikov Sergei                                                             |
#E-mail: bocharnikov@dezigner.ru                                                        |
#Source: https://github.com/bocharnikov                                                 |
#                                                                                       |
#Files: cureit.sh                                                                       |
#Build: 140618                                                                          |
#Copyright: 2018 Bocharnikov Sergei                                                     |
#--------------------------------[ License: MIT ]---------------------------------------+
#                                                                                       |
#---------------------------------------------------------------------------------------+
#       Permission is hereby granted, free of charge, to any person obtaining a copy    |
#       of this software and associated documentation files (the "Software"), to deal   |
#       in the Software without restriction, including without limitation the rights    |
#       to use, copy, modify, merge, publish, distribute, sublicense, and/or sell       |
#       copies of the Software, and to permit persons to whom the Software is           |
#       furnished to do so, subject to the following conditions:                        |
#       The above copyright notice and this permission notice shall be included in all  |
#       copies or substantial portions of the Software.                                 |
#       THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR      |
#       IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,        |
#       FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE     |
#       AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER          |
#       LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,   |
#       OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE   |
#       SOFTWARE.                                                                       |
#---------------------------------------------------------------------------------------+

HOST='XXX.XXX.XXX.XX'
USER='drweb'
PASSWD='drweb'

wget --referer="https://free.drweb.ru/download+cureit+free/" --content-disposition "https://free.drweb.ru/download+cureit/gr/?lng=ru"
mv *.exe Dr.Web_CureIt!.exe

ftp -n -v -i $HOST << EOT
ascii
user $USER $PASSWD
prompt
mdelete *.exe
binary
put Dr.Web_CureIt!.exe
bye
EOT

echo "Please wait: 20 sec..."
sleep 20

rm -rf Dr.Web_CureIt!.exe
