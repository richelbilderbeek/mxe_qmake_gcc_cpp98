#!/bin/sh

export PATH=`pwd`/mxe/usr/bin:$PATH
my_qmake="i686-pc-mingw32.static-qmake-qt4"
#my_qmake="i686-w64-mingw32.static-qmake-qt5"
my_folder="travis_qmake_gcc_cpp98"
my_pro_file="travis_qmake_gcc_cpp98.pro"

echo "Displaying cross compiler version (if it is not found, set the path to YourFolder/mxe/usr/bin"
$my_qmake -v

cd $my_folder
$my_qmake $my_pro_file

if [ ! -e Makefile ]
then
  echo "FAIL:"$myqmake", "$myprofile": FAIL (Makefile not found)"
  return 1
fi

make

if [ ! -e ./release/$my_folder".exe" ]
then
  echo "FAIL (executable not found)"
  return 1
fi

