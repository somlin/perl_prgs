#!/usr/bin/perl


use 5.010;#use strict;
use warnings;

chomp(my $data = <STDIN>);

$Regex_Pattern = '^[0-9a-bA-B]{40}[13579\s]{5}$';
$data =~ /$Regex_Pattern/? print 'true' : print 'false'

# my $regx = '^(\d{1,3})[\s-](\d{1,3})[\s-](\d{4,10})$';
# #$data =~ /$regx/? print 'true' : print 'false';
# #say"\n$data,$regx";

# my @arr= $data=~ /$regx/g;
# say"$data,$regx,\n@arr";


#$Regex_Pattern = '^[a-z][0-9][^a-z][^A-Z][A-Z].*$';
#a0$?ZWe
#$Regex_Pattern = '^\d\w+\.$';#$Regex_Pattern = '^([^\s]{3}\.?){4}$';#$Regex_Pattern = '^(\w{3}\.?){4}$';
#(\w{3}.?){4}$'
#$data =~ /$Regex_Pattern/? print 'true' : print 'false'
#@arr = $data =~ /hackerrank/g;
# say "#############################3333";
# say ($data);
# say "#############################3333";
# say ("@arr");