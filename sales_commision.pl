#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
#Prints the functionality of the script
say "Calculate the sales comission for the salesmane\n";
say "#" x 30;

#Asks user to input his/her sales amount

say "Please enter the amount of sales: ";
chomp(my $sales = <STDIN>);
say "Sales amount: $sales";

#Calculate the percentage amount

my $comm;if($sales >20000){
    $comm = $sales*25/100;   
}elsif($sales>15000 && $sales <= 20000){
    $comm = $sales * 20/100;
}elsif($sales>10000 && $sales <= 15000){
    $comm = $sales * 15/100;
}elsif($sales>5000 && $sales <= 10000){
    $comm = $sales * 10/100;
}else{
    say "You are not eligible for any Commision.... Better luck next time ..... Cheers !!!!!";
}
say "Commision for sales amount $sales is $comm";