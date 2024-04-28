#!/usr/bin/perl
#This program counts how many words are written,
#prints words in reverse order,
#prints every other word,
#counts the frequency of words and finds the longest words

use strict;
use warnings;

#Counts how many words are written
print scalar(@ARGV), "\n";


#prints words in reverse order
for(my $i=$#ARGV; $i>=0; $i--){
    print $ARGV[$i];
    if($i>0){
    print " ";
    }
}
print "\n";

#prints every other word
for(my $i=0; $i<@ARGV; $i+=2){
    print $ARGV[$i];
    if($i<@ARGV-2){
    print " ";
    }
}
print "\n";

#counts the frequency of words
my %frequency;

foreach my $word (@ARGV){

    $frequency{$word}++;

}
foreach my $word (@ARGV){
  
    if (defined $frequency{$word}){
        print "$word $frequency{$word}\n";
        delete $frequency{$word};
    }
}

#finds the longest words
my @longest;
my $words_length=0;
for my $words (@ARGV){
    my $length=length($words);
    if ($length>$words_length){
        @longest=$words;
        $words_length=$length;
    } 
    elsif ($length==$words_length){

        push @longest, $words;
    }
}
print "@longest", "\n";

