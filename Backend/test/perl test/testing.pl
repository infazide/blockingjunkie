#!/usr/bin/perl
use warnings 'all';
use strict;
use feature qw(say);

my $path="a.txt";
my $olocation="test.txt"; 


open my $fh, "<", $path  or die "Can't open $path: $!";
open my $output, '>', $olocation or die $!; 

while (my $line = <$fh>)
{
    my @matches = $line =~ /^(?!\d\.\d\.\d\.\d|\d\d\d\.\d\.\d\.\d)(\w.*)\ #>?/gs;

    
    print $output \n "@matches"
}

close $fh;
close $output;