#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say 8/3 ;
my $str = '#';

say $str x 2 , $str; 
my $var = '';

say $var++;my $name = 'foo';
print qq !The "name" is "$name"\n!;

say "Please enter 5 numbers: ";
chomp(my $nums = <STDIN>);

my @num = split(" +", $nums);
my $sum = $num[0] + $num[1]+ $num[2];
my $mult = $num[3] * $num[4];
my $sub =  $sum- $mult;

say"Sum fo 1st 3 numbers $sum, multiplication of last 2 numbers $mult, substraction of multiplication from sum is $sub";

my $x = $num[0];
my $y = $num[1];
say $x,$y;
if($x>$y){
   say"$x is greater than $y";
}elsif($x == $y){
   say"$x is equal to $y";
}else{
   say "$x is less than $y";
}
my $max = 0;
foreach my $n(@num){
   $max = $n if($n > $max);
}
say "The biggest number fo array @num is $max";