#!/usr/bin/perl

use 5.010;
use strict;
use warnings;


#Prints the functionality of the script
say "#" x 30;

#Asks user to input his/her age
print "Please enter your age: ";
chomp(my $age = <STDIN>);


if ($age <= 0){
	say"Incorect age..... ";
	goto START;
}

if($age >18){
	say "You are eligible for vote";
}else{
	say "Not eligible for vote";
}