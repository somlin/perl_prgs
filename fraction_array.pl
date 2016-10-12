#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use Scalar::Util qw(looks_like_number);

say"Enter the no of elements of array: ";
chomp(my $n = <STDIN>);

say"Enter the elements(numbers) of the array: ";
chomp(my $arr = <STDIN>);
my @arr = split(/ +/,$arr);
my $arr_size = scalar(@arr);
my $plus_count = 0;
my $minus_count = 0;
my $zero_count = 0;
foreach(@arr){
	if($_>0){
		$plus_count++;
	}elsif($_<0){
		$minus_count++;
	}else{
		$zero_count++;
	}
}
say "$plus_count $minus_count $zero_count";
my $plus_fraction = $plus_count/$arr_size;
my $minus_fraction = $minus_count/$arr_size;
my $zero_fratcion =  $zero_count/$arr_size;

say "$plus_fraction $minus_fraction $zero_fratcion";

$plus_fraction = sprintf("%06f", $plus_fraction);
$minus_fraction = sprintf("%06f", $minus_fraction);
$zero_fratcion = sprintf("%06f", $zero_fratcion);
say "$plus_fraction";
say "$minus_fraction";
say "$zero_fratcion";