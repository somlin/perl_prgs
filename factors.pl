#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use List::MoreUtils qw(uniq);

say "FACTORS!!!!";

#say"Please enter a number for which all the factor needs to be found";

#chomp(my $n = <STDIN>);

sub factors{
	my $n = shift;
	my $i = 2;
	my @factors;
	push(@factors,1,$n);
	while( $i<= $n/2){
		if($n%$i == 0){
			my $f1 = $n/$i;
			push(@factors,$i,$f1);
		}
		$i++;
	}
	#say "@factors";
	@factors = uniq(@factors);
	say "@factors";
	return (@factors);
}

sub get_common_elements{
	my ($num1_factors_ref, $num2_factors_ref) = @_;
	my @common_elements;
	my %params = map { $_ => 1 } @{$num1_factors_ref};
	foreach my $_(@{$num2_factors_ref}){
		if(exists($params{$_})) { push(@common_elements, $_) }
	}
	return @common_elements;
	
}
say "Find Highest comman factor";
say "Please input 2 numbers: ";
chomp(my $nums = <STDIN>);
my($num1, $num2) = split (" +", $nums);
say "$num1, $num2";
my @num1_factors = factors($num1);
my @num2_factors = factors($num2);
say "@num1_factors @num2_factors";
my @common_elements = get_common_elements(\@num1_factors,\@num2_factors);;
say "@common_elements";

my $hcf = 0;
foreach(@common_elements){
	$hcf = $_ if($_>$hcf);
}
say"The highest common factor is: $hcf"