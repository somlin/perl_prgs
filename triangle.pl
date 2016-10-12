#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say "Triangles!!!!!";

say "Enter all the three angles of the triangle: ";
chomp(my $angles = <STDIN>);
my($a,$b,$c) = split (" +", $angles);

say "$a $b $c";

if($a>90 || $b>90 || $c>90){
	say"The triangle is Obtuse-angled";
}elsif($a==90 || $b==90 || $c==90){
	say"The triangle right-angled";
}else{
	say"The triangle is acute angled";
}

say "Please enter side lengths of the triangle: ";
chomp(my $sides = <STDIN>);
my ($x,$y,$z) = split(" +", $sides);

#Check the type of triangle
if($x == $y && $y == $z){
	say"Equilateral triangle";
}elsif(($x == $y && $y !=$z) || ($x == $z && $z !=$y) || ($z == $y && $x !=$z)){
	say "ISoscalene triangle";
}elsif(($x**2 == $y**2 + $z**2) || ($y**2 == $x**2 + $z**2) || ($z**2 == $y**2 + $x**2)){
	say "Rightangled triangle";
}else{
	say "scalene triangle";
}