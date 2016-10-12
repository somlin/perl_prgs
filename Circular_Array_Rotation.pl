#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say "Please enter the no of elements, the no of time to run the process, no of queries: ";

chomp(my $line = <STDIN>);
my ($n,$k,$q)= split(/ +/, $line);
say "$n $k $q";

say "Please enter the array of elements" ;
chomp(my $arr = <STDIN>) ;
my @arr = split(/ +/ ,$arr);

while($k>0){
	my $t = pop(@arr);
	say "$t : @arr";
	unshift(@arr,$t);
	say "$t : @arr";
	$k--;
}

while($q > 0){
	say "Please Enter the index of element to be printed: ";
	chomp(my $m = <STDIN>);
	if($arr[$m]){
		say $arr[$m];
	}else{
		say"Array elemets does not exist";
	}
	$q--;
}