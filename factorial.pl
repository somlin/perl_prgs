#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say"Eneter a number for which we want to calculate the factorial: ";
chomp(my $n = <STDIN>);

my $orginal_num = $n;my $fact = 1;
while($n > 0){
	$fact *= $n;
	$n--;
}
say "$orginal_num! = $fact";