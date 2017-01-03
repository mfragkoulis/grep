#!/bin/sh

echo "Test plain grep without arguments"
cat $1 | grep $2 >grep_std.dat
dgsh -c "cat $1 | grep $2" >grep_dgsh.dat 2>err
diff grep_dgsh.dat grep_std.dat

echo "Test grep -o"
cat $1 | grep -o $2 >grep_std.dat
dgsh -c "cat $1 | grep -o $2" >grep_dgsh.dat 2>err
diff grep_dgsh.dat grep_std.dat

echo "Test grep -v"
cat $1 | grep -v $2 >grep_std.dat
dgsh -c "cat $1 | grep -v $2" >grep_dgsh.dat 2>err
diff grep_dgsh.dat grep_std.dat

echo "Test grep -c"
cat $1 | grep -c $2 >grep_std.dat
dgsh -c "cat $1 | grep -c $2" >grep_dgsh.dat 2>err
diff grep_dgsh.dat grep_std.dat

echo "Test grep -l"
grep -l $2 $1 | cat >grep_std.dat
dgsh -c "grep -l $2 $1 | cat" >grep_dgsh.dat 2>err
diff grep_dgsh.dat grep_std.dat

echo "Test grep -L"
grep -L $2 $1 | cat >grep_std.dat
dgsh -c "grep -L $2 $1 | cat" >grep_dgsh.dat 2>err
diff grep_dgsh.dat grep_std.dat

