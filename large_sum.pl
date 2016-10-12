#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

chomp(my $arr_temp = <STDIN>);
my @arr = split(/ +/, $arr_temp);

my $sum = 0;foreach(@arr){
	$sum += $_;
}
say "$sum";
