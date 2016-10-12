#!/usr/bin/perl

use 5.010;
use strict;
#use warnings;

chomp(my $n=<STDIN>);

my $reg_x = '\w(?!\g1)';
my @arr = $n =~ /$reg_x/g;
say "@arr";
#(.)(?!\1)
#$n =~ /$reg_x/g ? say "True" : say "False";
#$reg_x = '(?:ok){3,}';
# my @data;

# while( ($_ = <>) =~ /\S/){
   # last unless /\S/;
   # chomp;
   # push(@data,$_);
# }
# say "#########################################";
# say "data: @data";
# my %emails;
# foreach my $line(@data){
   # my @email = $line =~ /[a-zA-Z0-9][/g;
   # say "$line \n @email";
# }


   

# say"@data";
# say"#########################";
# foreach my $line(@data){
   # my @tag_att = $line=~/<^ ([a-z1-9]+).*>/g;
   # #my $tag = $line=~/^<([a-z1-9]+)\s*/;
   # #say"$tag";
   # #my @tag_att = $line=~/<([a-z1-9]+)\s*(([a-z1-9]+)*)>/g;
   # #say "$line";
   # say($tag_att);
   # #exit;
# }