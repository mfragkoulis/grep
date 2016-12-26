#!/bin/sh

echo "Test plain grep without arguments"
cat $1 | grep $2 > grep_std.dat
dgsh -c "cat $1 | grep $2" >grep_dgsh.dat 2>err
diff grep_dgsh.dat grep_std.dat

echo "Test grep -o"
cat $1 | grep -o $2 > grep_std.dat
dgsh -c "cat $1 | grep -o $2" >grep_dgsh.dat 2>err
diff grep_dgsh.dat grep_std.dat

echo "Test grep -v"
cat $1 | grep -v $2 > grep_std.dat
dgsh -c "cat $1 | grep -v $2" >grep_dgsh.dat 2>err
diff grep_dgsh.dat grep_std.dat

echo "Test grep -c"
cat $1 | grep -c $2 > grep_std.dat
dgsh -c "cat $1 | grep -c $2" >grep_dgsh.dat 2>err
diff grep_dgsh.dat grep_std.dat

echo "Test grep -l"
cat $1 | grep -l $2 > grep_std.dat
dgsh -c "cat $1 | grep -l $2" >grep_dgsh.dat 2>err
diff grep_dgsh.dat grep_std.dat

echo "Test grep -L"
cat $1 | grep -L $2 > grep_std.dat
dgsh -c "cat $1 | grep -L $2" >grep_dgsh.dat 2>err
diff grep_dgsh.dat grep_std.dat

