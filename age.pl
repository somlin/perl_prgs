#!/usr/bin/perl

use 5.010;
use strict;
use warnings;


#Prints the functionality of the scriptsay "Program to check if the person is eligeble for vote";
say "#" x 30;

#Asks user to input his/her ageSTART:
print "Please enter your age: ";
chomp(my $age = <STDIN>);say "your age = $age";

#Validaes the age
if ($age <= 0){
	say"Incorect age..... ";
	goto START;
}
#Checks the users eligibility to vote#say "I am here";
if($age >18){
	say "You are eligible for vote";
}else{
	say "Not eligible for vote";
}