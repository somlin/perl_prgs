#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say "AXIS COORDIATES";

say"Please input x and y coorinates of the point: ";
chomp(my $cords = <STDIN>);
my ($x,$y) = split(" +", $cords);
#my $x = <STDIN>;
#my $y = <STDIN>;
#chomp($x,$y);
say "$x $y";

#Check the position of the point

if($x==0 && $y == 0){
	say"The point is Origin"
}elsif($x==0 && $y !=0){
	say "Point is on the y-axis";
}elsif($x!=0 && $y == 0){
	say "Point is in the x-axis";
}else{
	say"Point is not present in x-axis or y-axis or an Origin";
	if($x >0 && $y >0){
		say"1st Quardrant";
	}elsif($x>0 && $y <0){
		say "4th Quadrant";
	}elsif($x<0 && $y >0){
		say "2nd Quadrant";
	}else{
		say "3rd Quadrant";
	}
}

