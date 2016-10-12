#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use Data::Dumper;


say "Enter the size of sqaure matrix";
chomp(my $n = <STDIN>);
say"Enter $n row of data:";

my $i= 1;
my @multi_arr;while($i <= $n){
	chomp(my $row = <STDIN>);
	my @arr = split(/ +/, $row);
	push(@multi_arr, \@arr);
	$i++;
#	chomp(my $row2 = <STDIN>);
#	chomp(my $row3 = <STDIN>);
}

#my @arr1 = split(/ +/, $row1);
#my @arr2 = split(/ +/, $row2);
#my @arr3 = split(/ +/, $row3);

#my @multi_arr = (\@arr1,\@arr2,\@arr3);

#print Dumper(\@multi_arr);

$i = 0;
my $primary_diagonal_sum = 0;
my $secondary_diagonal_sum = 0;
foreach(@multi_arr){
	$primary_diagonal_sum += $multi_arr[$i][$i];
	my $j = ($n-1)-$i;
#	say "$j";
	$secondary_diagonal_sum += $multi_arr[$i][$j];
	$i++;
}
say"Sum of diagonal elements $primary_diagonal_sum ** $secondary_diagonal_sum";
my $diagonal_diff = abs($primary_diagonal_sum - $secondary_diagonal_sum);
say "$diagonal_diff";
