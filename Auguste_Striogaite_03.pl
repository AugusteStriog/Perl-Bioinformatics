#!/usr/bin/perl

#This code uses circular linked lists. 
#It prints the list starting from the initial element
#It can move elemets clock counterclockwise or clockwise

use strict;
use warnings;

# Creates the circular linked list with a single element
my $head = { value => 0 };
$head->{prev} = $head;
$head->{next} = $head;

# Sets the pointer to the initial element
my $pointer = $head;

# Loops through the command-line arguments and inserts them into the list
foreach my $arg (@ARGV) {
    if ($arg eq '-') {
        # Moves the pointer one element counterclockwise
        $pointer = $pointer->{prev};
    } elsif ($arg eq '+') {
        # Moves the pointer one element clockwise
        $pointer = $pointer->{next};
    } else {
        # Inserts the argument after the element pointed to by the pointer
        my $new_node = { value => $arg, prev => $pointer, next => $pointer->{next} };
        $pointer->{next}{prev} = $new_node;
        $pointer->{next} = $new_node;
        $pointer = $new_node;
    }
}

# Prints the list starting from the initial element
print $head->{value};
my $node = $head->{next};
while ($node != $head) {
    print " $node->{value}";
    $node = $node->{next};
}
print "\n";

