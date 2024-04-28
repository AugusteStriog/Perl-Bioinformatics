#!/usr/bin/perl
#The output of this program depends on the --scalar option:
#If the option isn't given the program multiplies the numbers in the
#corresponding lines of the files and output each product on a separate line
#If the option is given, the program  multiplies and add the numbers
#in the corresponding lines of two files,
#The program is able to handle and report the following error situations:
#No file is specified in the output.
#The specified file cannot be read.
#The numbers in the lines of the specified files differ.
#If --scalar option is given, less or more than two files are specified.
use strict;
use warnings;

# gets command-line arguments
my @files;
my $scalar = 0;

foreach my $arg (@ARGV) {
    if ($arg eq "--scalar") {
        $scalar = 1;
    } else {
        push @files, $arg;
    }
}

# checks for errors
if (scalar(@files) == 0) {
    print STDERR "Usage: $0 [--scalar] file1 file2 [file3 ...]\n";
    exit 1;
}

if ($scalar && scalar(@files) != 2) {
    print STDERR "$0: --scalar option requires exactly two files\n";
    exit 1;
}

my $first_file = $files[0];
my $num_lines;

# reads first file to get number of lines
open my $fh, '<', $first_file or die "$0: $first_file: $!\n";

while (<$fh>) {
    $num_lines++;
}

close $fh;

# checks that all files have the same number of lines
foreach my $file (@files) {
    open my $fh, '<', $file or die "$0: $file: $!\n";
    my $lines = 0;

    while (<$fh>) {
        $lines++;
    }

    close $fh;

    if ($lines != $num_lines) {
        print STDERR "$0: $file: all files must have the same number of lines\n";
        exit 1;
    }
}

# performs multiplication and outputs results
if (!$scalar) {
    for (my $line = 1; $line <= $num_lines; $line++) {
        my $product = 1;

        foreach my $file (@files) {
            open my $fh, '<', $file or die "$0: $file: $!\n";
            my $current_line = 0;

            while (<$fh>) {
                $current_line++;

                if ($current_line == $line) {
                    $product *= $_;
                    last;
                }
            }

            close $fh;
        }

        print "$product\n";
    }
} else {
    my $file1 = $files[0];
    my $file2 = $files[1];
    my $result = 0;

    open my $fh1, '<', $file1 or die "$0: $file1: $!\n";
    open my $fh2, '<', $file2 or die "$0: $file2: $!\n";

    for (my $line = 1; $line <= $num_lines; $line++) {
        my $num1 = <$fh1>;
        my $num2 = <$fh2>;

        chomp $num1;
        chomp $num2;

        $result += $num1 * $num2;
    }

    close $fh1;
    close $fh2;

    print "$result\n";
}
