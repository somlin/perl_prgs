#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say "LOOPS ------";
say "Enter a number : ";
chomp (my $n = <STDIN>);
my $i =1;

while($i<=$n){
	say "$i";
	$i++;
}
