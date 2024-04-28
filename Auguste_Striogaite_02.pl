#!/usr/bin/perl

#Program sorts numbers with bubble sort algorithm
#Negative numbers are printed out the way they were written
#Non negative numbers are sorted in acending order
use strict;
use warnings;

# outputs the negative numbers in the same order as input
my @negatives = grep { $_ < 0 } @ARGV;
print "@negatives\n";

#creates an array of non negative numbers
my @non_negatives = grep { $_ >= 0 } @ARGV;

my $length = scalar(@non_negatives);

my $is_sorted = 1;
# sorts the numbers using the bubble sort algorithm
while($is_sorted){
    $is_sorted = 0;

    for (my $i = 0; $i < $length-1; $i++) { 
        if ($non_negatives[$i] > $non_negatives[$i+1]) {
            ($non_negatives[$i], $non_negatives[$i+1])=($non_negatives[$i+1], $non_negatives[$i]);
             $is_sorted = 1;
        }
    }
    $length--;
}


print "@non_negatives\n";
