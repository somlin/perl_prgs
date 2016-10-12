#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say"Enter a number: ";
chomp(my $n = <STDIN>);

my $i =1;
while($i<=$n){
	my $space = 1;
	while($space <=($n-$i)){
		print" ";
		$space++;
	}
	my $stars = 1;
	while($stars <=$i){
		print"#";
		$stars++;
	}
	print"\n";
	$i++;	
}
