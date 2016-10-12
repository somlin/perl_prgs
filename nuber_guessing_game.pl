#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use Moo;
use File::Copy;

say "Welcome to Number Guessing game";
say "#" x 30;

say "TIP: You are allowed to guess 10 times.................";

my $n = 1;
while($n<=10){	my $rand = int(rand(200));
	say "Please enter an random number between 1 .. 200";
	chomp(my $var = <STDIN>);	
	if($var > 200 || $var < 0){
		say "Entered number is not in the range";
		$n++;
		next;
	}
	if($var < $rand){
		say "Try $n :Entered number $var is lesser than the random number $rand";
	}elsif($var > $rand){
		say "Try $n :Entered number $var is greater thaan the random number $rand";
	}else{
		say "Try $n : CONGRATULATION!!!! --------> Entered number $var is same as random number $rand";		}
	$n++;
}