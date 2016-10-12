#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say "Prime Numbers!!!!!!!";

say "Please entre a number: ";
chomp(my $n = <STDIN>);
my $i = 2;
my $prime = 1;
while( $i<= $n/2){
	$prime = 0 if($n%$i == 0);
	$i++;
	last if ($prime == 0);
}
if($prime == 0){
	say "$n is a composite number";
}else{
	say "$n is a prime no";
}

sub Check_prime{
	my $n = shift;
	my $i = 2;
	my $prime = 1;
	while( $i<= $n/2){
		$prime = 0 if($n%$i == 0);
		$i++;
		last if ($prime == 0);
	}
	if($prime != 0){
		return ($n);
	}else{
		return(0);
	}
}

say "Please entre how many prime numbers you want to print: ";
chomp(my $N = <STDIN>);

my @prime_numbers;my $d = 1;
while($N>0){
	my $p = Check_prime($d);
	if($p != 0){
		push(@prime_numbers,$p);
		$N--;
	}
	$d++;
}
say "@prime_numbers";
	
