#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use Data::Dumper;

# Enter your code here. Read input from STDIN. Print output to STDOUT

chomp(my $n = <STDIN>);
chomp(my $nums = <STDIN>);
my @nums = split(" +", $nums);
say "@nums";

# Calculate mean;
my $sum = 0;

foreach my $_(@nums){
	$sum += $_;
}
my $mean = $sum / $n;
say "$mean";

#Calculate median
@nums = sort {$a <=> $b} @nums;
say "@nums";
my $median;
if($n%2 == 0){
	say "Hi I am here";
	my $i = $n/2;
	say "$nums[$i-1] $nums[$i]";
	$median = ($nums[$i-1] + $nums[$i])/2;
}else{
	my $i = ($n +1)/2;
	$median = $nums[$i-1];
}

say "$median";
#Calculate Mode
my %nums;
$nums{$_}++ foreach(@nums);
my $count_nums;
foreach(keys %nums){
	my $value = $nums{$_};
	if(exists $count_nums->{$value}){
		push(@{$count_nums->{$value}}, $_);
	}else{
		$count_nums->{$nums{$_}} = [$_];
	}
}
my @sorted_values = sort {$nums{$b} <=> $nums{$a}} keys %{$count_nums};
my $value = $sorted_values[0];
my @result = sort {$a <=> $b} (@{$count_nums->{$value}});

my $mode = $result[0];
say "$mode";