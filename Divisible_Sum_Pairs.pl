#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use Data::Dumper;

say "Divisible Sum Pairs !!!";

say " Please enter space-separated integers, n and k, respectively: ";
chomp(my $input = <STDIN>);
my ($n, $k) = split(/ +/,$input);

say"Enter $n no of integers:";
chomp($input = <STDIN>);
my @arr = split(/ +/,$input);
say "@arr";
my $length = scalar(@arr);
my $i=0;

say "$length";
my @result;
while($i<$length){
	my $j = $i+1;
	while($j<$length){
		push(@result, [$i,$j]) if(($arr[$i]+$arr[$j])%$k == 0) ;
		$j++;
	}
	say "$i";
	$i++;
}
print Dumper(\@result);
my $pair_count = scalar(@result);
say "$pair_count";