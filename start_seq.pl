#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say "STAR SEQ !!!!!!!";

say"Please eneter a number to form stars pattern";
chomp(my $n = <STDIN>);
#say "Please enter up to how many rows, you want stars ";
#chomp(my $y = <STDIN>);
 
say "1--- stars in a vertical line!!";
my $i = $n;
while($i > 0){
	say "*";
	$i--;
}
say"2------------ A rectangle of stars";
#$i = $x;
#my $j;

for(my $i = 1; $i <=$n; $i++){
	for(my $j = 1; $j <=$n; $j++){
		print"*";		
	}
	print"\n";
}
say"stars pattern --------------------- 3"; 
for(my $i = 1; $i<=$n; $i++){
	my $j = $i;
	while($j>0){
		print"*";	
		$j--;	
	}
	print"\n";
}
say"stars pattern --------------------- 4"; 
for(my $i = 1; $i<=$n; $i++){
	my $spaces = 1;
	while($spaces <= ($n-$i)){
		print" ";
		$spaces++;
	}
	my $stars = 1;
	while($stars <= (2*$i -1)){
		print "*";
		$stars++;
	}
	print"\n";
}
say"stars pattern --------------------- 5"; 
for(my $i = 1; $i<=$n; $i++){
	my $spaces = 1;
	while($spaces <= ($n-$i)){
		print" ";
		$spaces++;
	}
	my $stars = 1;
	while($stars <= (2*$i -1)){
		print "*";
		$stars++;
	}
	print"\n";
}
for(my $i = 1; $i<=($n-1); $i++){
	my $spaces = 1;
	while($spaces <= $i){
		print" ";
		$spaces++;
	}
	my $stars = 1;
	while($stars <= ($n-2*$i+4)){
		print "*";
		$stars++;
	}
	print"\n";
}
say"stars pattern --------------------- 6";
for(my $i = 1; $i<=$n; $i++){
	my $spaces1 = 1;
	while($spaces1 <= ($n-$i)){
		print" ";
		$spaces1++;
	}
	print "*";
	my $j = 1;
	if($j<$i){
		my $spaces2 = 1;
		while($spaces2 <= (2*$i-3)){
			print" ";
			$spaces2++;
		}
		print "*";
	}
	print"\n";
}
for(my $i = 1; $i<=($n-1); $i++){
	my $spaces1 = 1;
	while($spaces1 <= $i){
		print" ";
		$spaces1++;
	}
	print "*";
	my $j = ($n-1);
	if($j>$i){
		my $spaces2 = 1;
		while($spaces2 <= ($n-2*$i+2)){
			print" ";
			$spaces2++;
		}
		print "*";
	}
	print"\n";
}
say"stars pattern --------------------- 7";
for(my $i = 1; $i<=$n; $i++){
	my $spaces = 1;
	while($spaces <= ($n-$i)){
		print" ";
		$spaces++;
	}
	my $d1 = 1;
	my $x=1;
	while($d1 <= $i){
		print "$x";
		$x++;
		$d1++;
	}
	my $d2 = 1;
	$x=1;
	while($d2 <= ($i-1)){
		print "$x";
		$x++;
		$d2++;
	}
	print"\n";
}
say"stars pattern --------------------- 8";
for(my $i = 1; $i<=$n; $i++){
	my $spaces = 1;
	while($spaces <= ($n-$i)){
		print" ";
		$spaces++;
	}
	my $d1 = 1;
	my $x='A';
	while($d1 <= $i){
		print "$x";
		$x++;
		$d1++;
	}
	my $d2 = 1;
	$x='A';
	while($d2 <= ($i-1)){
		print "$x";
		$x++;
		$d2++;
	}
	print"\n";
}