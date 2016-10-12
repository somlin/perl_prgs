#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

print "CamelCase\n";


chomp(my $str = <STDIN>);


if($str){
	$pattern = '([a-z]+)';
	foreach($str =~/[A-Z]/g){
		$pattern .='([A-Z][a-z]+)';
	}
	say "$pattern";
}
my @Words = ($str =~/$pattern/);
say "@Words";
my $word_count = scalar(@Words);
say "$word_count";