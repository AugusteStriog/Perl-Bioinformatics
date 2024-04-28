# Auguste_Striogaite_01.pl

This Perl script analyzes a list of words provided as command-line arguments. It performs the following tasks:

1. **Counting Words:** Displays the total number of words provided.
2. **Reverse Order:** Prints the words in reverse order.
3. **Every Other Word:** Prints every other word from the list.
4. **Word Frequency:** Counts the frequency of each word and displays it.
5. **Longest Words:** Finds and displays the longest word(s) in the list.

## Usage

To use this script, run it from the command line followed by a list of words separated by spaces. For example:

```perl .\Auguste_Striogaite_01.pl hello world ```

```perl .\Auguste_Striogaite_01.pl hi world world```

```perl .\Auguste_Striogaite_01.pl this is text to check if the program works```

# Auguste_Striogaite_02.pl

This Perl script sorts a list of numbers using the bubble sort algorithm. It performs the following tasks:

1. **Sorting Negative Numbers:** Prints negative numbers in the same order as they were provided.
2. **Sorting Non-Negative Numbers:** Sorts non-negative numbers in ascending order using the bubble sort algorithm.

## Usage

To use this script, run it from the command line followed by a list of numbers separated by spaces. For example:

```perl .\Auguste_Striogaite_02.pl 3 -5 1 0 -2```

```perl .\Auguste_Striogaite_02.pl 3 -5 1 0 -22 10 5```


## Auguste_Striogaite_03.pl

To use this script, run it from the command line followed by a sequence of elements and commands. Elements are inserted into the list, and commands specify movements within the list. For example:

# Circular Linked List Operations

This Perl script implements operations on a circular linked list. It performs the following tasks:

1. **Print List:** Prints the circular linked list starting from the initial element.
2. **Move Pointer:** Allows moving the pointer clockwise or counterclockwise within the list.

## Usage

To use this script, run it from the command line followed by a sequence of elements and commands. Elements are inserted into the list, and commands specify movements within the list. For example:

```perl .\Auguste_Striogaite_03.pl 1 2 3 + 4 5 - 6```

```perl .\Auguste_Striogaite_03.pl 1 2 3 4```

```perl .\Auguste_Striogaite_03.pl A D - B C + E```

```perl .\Auguste_Striogaite_03.pl A - - B```

# Auguste_Striogaite_04.pl

This Perl script analyzes words provided as command-line arguments. It performs the following tasks:

1. **Filtering Words:** Prints words that start with the letter "a".
2. **Letter Frequencies:** Prints the frequencies of individual letters in the provided words.
3. **Letter Frequency Comparison:** Prints the frequency of each letter compared to the total number of characters (excluding empty characters).

## Usage

To use this script, run it from the command line followed by a list of words. For example:

```perl .\Auguste_Striogaite_04.pl hello world```

```perl .\Auguste_Striogaite_04.pl apple```

```perl .\Auguste_Striogaite_04.pl this is text to check if the program works```

# Auguste_Striogaite_05.pl

This Perl script performs file operations based on command-line arguments and options. It handles multiplication and addition of numbers in corresponding lines of input files. The behavior depends on whether the `--scalar` option is provided or not.


- `--scalar`: If provided, the program multiplies and adds the numbers in the corresponding lines of two files.
- `file1`, `file2`, `file3`, ...: Input files containing numbers.

## Functionality

The script provides the following functionality:

1. **Multiplication without `--scalar`:** If the `--scalar` option is not provided, the program multiplies the numbers in the corresponding lines of the files and outputs each product on a separate line.

2. **Multiplication and Addition with `--scalar`:** If the `--scalar` option is provided, the program multiplies and adds the numbers in the corresponding lines of two files.

## Error Handling

The program handles and reports the following error situations:

- No file is specified in the output.
- The specified file cannot be read.
- The numbers in the lines of the specified files differ.
- If the `--scalar` option is given, less or more than two files are specified.

## Usage

To use this script:

Go to the correct order:

```cd 5```

```perl .\Auguste_Striogaite_05.pl numbers.lst```

```perl .\Auguste_Striogaite_05.pl numbers.lst .\numbers.lst```

```perl Auguste_Striogaite_05.pl --scalar numbers.lst numbers.lst```



