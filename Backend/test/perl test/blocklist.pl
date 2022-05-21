#!/usr/bin/perl
use warnings 'all';
use strict;
use feature qw(say);

my $path="a.txt";
my $olocation="output.txt"; 


open my $fh, "<", $path  or die "Can't open $path: $!";
open my $output, '>', $olocation or die $!; 

while (my $line = <$fh>)
{
    my @matches = $line =~ /^(?:0).*$|^(?:1).*$|^(?:\|).*$/gs;

    
    print $output "@matches"
}

close $fh;
close $output;