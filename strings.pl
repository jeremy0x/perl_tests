#!/usr/bin/perl

use strict;
use warnings;
# use diagnostics;

use feature 'say';
use feature "switch";

# Strings

my $long_string = "Random Long String";

say "Length of String ", length $long_string;

printf("Long is at %d \n", index $long_string, "Long");

printf("Last g is at %d \n", rindex $long_string, "g");

# Concatenate strings

$long_string = $long_string . ' isn\'t that long';

say $long_string;

# substr
printf("Index 7 through 10 %s \n", substr $long_string, 7, 4);

my $animal = "animals";

printf("Last 4 character is %s \n", chop $animal);

my $no_newline = "No Newline\n";
chomp $no_newline;

# Uppercase and Lowercase
printf("Uppercase: %s \n", uc $long_string);
printf("Lowercase: %s \n", lc $long_string);
printf("1st Uppercase: %s \n", ucfirst $long_string);
printf("1st Lowercase: %s \n", lcfirst $long_string);

# Replace
$long_string =~ s/ /, /g;
say $long_string;

# Repeat
my $two_times = "What I said is " x 2;
say $two_times;

# Join

my @abcs = ('a' .. 'z');
say "Alphabets: @abcs";

say "Joined: ", join(", ", @abcs);

my $letter = 'B';
say "Next Letter ", ++$letter;
