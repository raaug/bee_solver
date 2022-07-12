#!/usr/bin/perl
# Solver for NY Times Spelling Bee type games.
# Author Ray47
# 2022/01/12
#

use v5.10;
#
#use v5.34.0;
use autodie;

my $search_string = $ARGV[0];
my $must_include = substr $search_string, 3, 1;
my $flag;
my $filename = 'ENABLE.txt'; #be sure to change to name of your dictionary
open (my $fh, '<', $filename);

while (my $line = <$fh>) {
  chomp $line;                      # Read in the next dictionary word
  my $len = length $line;           # Store the length of the dictionary word
  my @word = split (//, $line);     # Split word into an array of characters
  foreach my $letter (@word)        # Iterate through the array of chars.
  {
    if ($search_string =~ $letter)  # See if the word contains a search letter
    {
      $flag = 1;
    } else {
      $flag = 0;
      last;
    }
  }

  if ($flag && $len > 3)            # Make sure the word is 4 or more letters
  {
    if ($line =~ $must_include)
    {
      say $line ;
    }
  }
}
