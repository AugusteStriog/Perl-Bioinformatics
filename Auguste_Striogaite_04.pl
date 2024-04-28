#!/usr/bin/perl
#This code prints out words that start with letter "a"
#This sode prints put letters their frequencies
#This code prints out the letter frequency compared to empty characters
use strict;
use warnings;

# Filters words that start with the first letter
my $first_letter = 'a';
my @words = @ARGV; 
my @a_words = grep { lc(substr($_, 0, 1)) eq $first_letter } @words; 

print join(' ', @a_words); 
print "\n";




my %freq;
my $input = join('', @ARGV);
my $total_chars = 0;

foreach my $char (split //, $input) {
  next if $char eq ' ';
  $freq{$char}++;
  $total_chars++;
}

foreach my $char (sort { $freq{$b} <=> $freq{$a} || ord($a) <=> ord($b) } keys %freq) {
  my $freq = $freq{$char};
  my $ratio = sprintf("%.2f", $freq / $total_chars);
  print "$char $freq $ratio\n";
}
