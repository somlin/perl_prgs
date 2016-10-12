#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say"Enter the number of sticks: ";
chomp(my $N = <STDIN>);
say"Enter the lengths of sticks :";
chomp(my $input = <STDIN>);
my @lengths = split(/ +/,$input);

while($N>0){
	say "$N";
	my $min;
	foreach(@lengths){
		$min = $_ if(!$min);
		$min = $_ if($min>$_);
	}
#	my $test = map{$_ > $min ? $min : $_} @lengths;
#	say "$min";
	my @result;
	foreach(@lengths){
		$_ -= $min;
		push(@result,$_) if($_> 0);		
	}
#	say "@lengths \n @result";
#	exit;
	@lengths = @result;
	$N = scalar(@lengths);
#	print"$N --> @lengths";
	#exit;
}
