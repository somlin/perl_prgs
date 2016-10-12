#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
#use Math::BigInt;
use bigint;


# my $i = 1; 
# while (1){
	# $i = $i *10;
	 # print "$i \n";
# }
# exit;

say "Enter t1,t2 and n: ";
chomp(my $input = <STDIN>);
my($t1,$t2,$n) = split(/ +/,$input);

my $t = $t2 + ($t1**2);
my @arr = ($t1,$t2,$t);
#say @arr;
my $len = scalar(@arr);while($n - $len>=1){
#	say " $arr[-1] , $arr[-2]";
	$t = $arr[-2] + $arr[-1] ** 2;
	
	push(@arr,$t);
#	say @arr;
	$n--;
}
#say "@arr";
say "$t";
