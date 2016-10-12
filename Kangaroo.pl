#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say "Kangaroo !!!!";
say "Please enter location on the x-asis and speed for both the kangaroos:";
chomp(my $input = <STDIN>);
my ($x1,$v1,$x2,$v2) = split(/ +/, $input);
say "$x1,$v1,$x2,$v2";

if($x1<$x2 && $v1<=$v2){
	say "NO";
}else{
	my $n =1;
	my $i =0;
	while($n){
		$x1 += $v1;
		$x2 += $v2;
		if($x1 == $x2){
			say "YES";
			$n = 0;
		}elsif($x1>$x2){
			say "NO";
			$n=0;
		}
		$i++;
	}
	say "On step $i : $x1 $x2";
}