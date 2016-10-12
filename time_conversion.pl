#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

say "Enter the time in forrmat hh:mm:ssAM/PM : ";

chomp(my $time= <STDIN>);
my ($hh, $mm,$ss_am_pm) = split(/:/, $time);
my $ss = substr($ss_am_pm, 0,2);
my $am_pm = substr($ss_am_pm, 2,2);
say "$ss $am_pm";
if($am_pm eq "PM"){
		
	if($hh == 12){
		$hh = 12;
	}else{
		$hh += 12;
	}
}elsif($am_pm eq "AM"){
	if($hh == 12){
		$hh = 0;
	}
}
say "$hh";
my $new_time = sprintf("%02d:%02d:%02d", $hh,$mm,$ss);
say "$new_time";



