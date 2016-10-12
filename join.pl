#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

my @names = qw(rosali somlin fafun liku);
say "@names";
my $str = join ("#", @names, 'me');

say $str;
