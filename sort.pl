#!/usr/bin/perl

use 5.010;
use strict;
use warnings;


# my @arr = qw(abc aaa aab aca aac bac bca);
# say "@arr";
# my @sorted_arr = sort {$a cmp $b}(@arr);
# say "@sorted_arr";

say "Please enter a string: ";
chomp(my $input = <STDIN>);
my @chrs = split(//,$input);
say "@chrs";