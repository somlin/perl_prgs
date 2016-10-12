#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say "EVEN ----- ODD";

say "Please enter a number: ";
chomp(my $num = <STDIN>);

if($num%2 == 0){
	say"Even number";
}else{
	say "ODD number";
}