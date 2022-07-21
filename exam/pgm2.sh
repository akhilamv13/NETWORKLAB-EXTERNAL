#!/bin/bash
echo enter first number
read f
echo enter second number
read s
lcm=0
if [ $f -gt $s ]
then
n=$f
else
n=$s
fi
for ((i=1;i<=n;i++))
do
g1=`expr $f % $i`
g2=`expr $s % $i`
if [ $g1 -eq 0 -a $g2 -eq 0 ]
then
gcd=$i
fi
done
echo GCD $gcd
for ((i=2;i<=n;i++))
do
g1=`expr $i % $f`
g2=`expr $i % $s`
if [ $g1 -eq 0 -a $g2 -eq 0 ]
then
lcm=$i
fi
done
if [ $lcm -eq 0 ]
then
echo LCM `expr $f \* $s`
else
echo LCM $lcm
fi
