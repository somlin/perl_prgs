#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say "SEQUENCE GENERATOR !!!!!!";

say"How many output do you want? :";
chomp(my $N = <STDIN>);

say "SEQ - 8 11 14 17 20 .....";
my $n=$N;
my $i = 1;
while($n>0){
	my $j = $i*3 +5;
	print"$j ";
	$n--;
	$i++;
}
print"\n";

say "SEQ- 10 8 6 4 2 0"; 
$n = $N;
$i = 1;
while($n>=0){
	my $j = $i*(-2) + 12;
	print"$j ";
	$n--;
	$i++;
}
print"\n";

say"SEQ - 8 17 32 53 80";
$n = $N;
$i=2;
my $j = 8;

