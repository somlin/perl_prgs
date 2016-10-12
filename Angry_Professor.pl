#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use Data::Dumper;
say "Enter the number of testcases: ";
chomp(my $T = <STDIN>);
my $count = 1; 
my $test_cases;
while($count<=$T){
	say"Enter N(students in the class) and K(the cancelation threshold).";
	chomp(my $input = <STDIN>);
	my($N,$K) = split(/ +/,$input);
		say "The second line contains N space-separated integers (a1,a2 ----- aN) describing the arrival times for each student:";
	chomp($input = <STDIN>);
	my @arr = split(/ +/,$input);
	my @test_cases = ([$N,$K],\@arr);
	$test_cases->{$count} = \@test_cases;
	$count++;
}
#print Dumper($test_cases);
#exit;
foreach(sort {$a <=> $b} keys %{$test_cases}){
	my $N = $test_cases->{$_}->[0]->[0];
	my $K = $test_cases->{$_}->[0]->[1];
	my @arr = @{$test_cases->{$_}->[1]};
	say "$N, $K";
#	say "$N @arr";
	my $counter =0;
	foreach(@arr){
		$counter++ if($_<=0);
	}
	say "$counter $K";
	#exit;
	if($counter < $K){
		say "YES";
	}else{
		say "NO";
	}
}

