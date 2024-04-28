#!/usr/bin/perl

#Program sorts numbers with bubble sort algorithm
#Negative numbers are printed out the way they were written
#Non negative numbers are sorted in acending order
use strict;
use warnings;


my $length = scalar(@ARGV);

# output the negative numbers in the same order as input
my @negatives = grep { $_ < 0 } @ARGV;
print "@negatives\n";

# sort the numbers using the bubble sort algorithm
for (my $i = 0; $i < $length-1; $i++) {
    for (my $j = 0; $j < $length-$i-1; $j++) { 
        if ($ARGV[$j] > $ARGV[$j+1]) {
            my $temp_greater_number = $ARGV[$j];
            $ARGV[$j] = $ARGV[$j+1];
            $ARGV[$j+1] = $temp_greater_number;
        }
    }
}

# output the non-negative numbers in ascending order
my @non_negatives = grep { $_ >= 0 } @ARGV;
print "@non_negatives";
