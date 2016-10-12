#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

chomp(my $alice_scores = <STDIN>);
chomp(my $bob_scores = <STDIN>);

say "$alice_scores $bob_scores ";
my @alice_scores = split(/ +/, $alice_scores);
my @bob_scores = split(/ +/, $bob_scores);
say "@alice_scores ** @bob_scores";
my $length = scalar(@alice_scores);

my $i =0;
my $alice_comp_score =0;
my $bob_comp_score = 0;
say "$length ** $i";
while($i<$length){
   if($alice_scores[$i] > $bob_scores[$i]){
      $alice_comp_score++;
   }elsif($bob_scores[$i] > $alice_scores[$i]){
      $bob_comp_score++;
   }
   $i++;
}
say "$alice_comp_score $bob_comp_score";
