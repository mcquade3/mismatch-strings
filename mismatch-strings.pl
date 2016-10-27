#!/usr/local/bin/perl
# Mike McQuade
# mismatch-strings.pl
# Takes in 2 strings from an input file, then outputs the
# number of different characters between the two strings.

use strict;
use warnings;

# Define local variables
my ($string1,$string2);
my $count = 0;

# Open the file to read
open(my $fh,"<ba1g.txt") or die $!;

# Initialize the two string variables with the two lines in the file
$string1 = <$fh>;
$string2 = <$fh>;
chomp($string1);
chomp($string2);

# Iterate through the genome string
for (my $i = 0; $i < length($string1); $i++){
	# If there is a mismatch in the strings, increment the count by 1
	if (substr($string1,$i,1) ne substr($string2,$i,1)) {
		$count++;
	}
}

# Close the file
close($fh) || die "Couldn't close file properly";

# Print count
print $count;