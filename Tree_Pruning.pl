#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say "Please enter the no of nodes of the tree and no of time you want to perform remove operation:" ;
chomp(my $line = <STDIN>);
my ($n,$k) = split(/ +/, $line);

say"Please enter integer weight for all the $n vertices: ";
chomp(my $W = <STDIN>);
my @W = split(/ +/,$W);

say "@W";my $total_weight = 0;
my $maximal_weight = 0;

$total_weight = total_weight();
$maximal_weight = maximal_weight();
say "$total_weight $maximal_weight";

while($k>0){
	say"Please enter two space-separated integers, u and v , describing an edge connecting vertex u to v vertex : ";
	chomp(my $input = <STDIN>;
	my($u,$v) = split(/ +/, $input);
	
	$k--;
}

sub total_weight{
	say "Hi I am here";
	$total_weight += $_ foreach(@W);
	 return $total_weight;
}
sub maximal_weight{
	foreach(@W){
		$maximal_weight += $_ if($_>0);
	}
	return $maximal_weight;
}

