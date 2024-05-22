#!/usr/bin/perl

use strict;
use warnings;
# use diagnostics;

use feature 'say';
use feature "switch";

# Basic math

say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 % 4 = ", 5 % 4;
say "5 ** 4 = ", 5 ** 4;

# Shorthand math

say "EXP 1 = ", exp 1;
say "HEX 10 = ", hex 10;
say "OCT 10 = ", oct 10;
say "INT 6.45 = ", int(6.45);
say "LOG 2 = ", log 2;
say "Random between 0 - 10 = ", int(rand 11);
say "SQRT 9 = ", sqrt 9;

# Assignment Operators: +=, -=, *=, /=, %=

my $rand_num = 5;
say "Number is ", $rand_num;
$rand_num += 1;
say "Number Incremented ", $rand_num;

say "6++ = ", $rand_num++;
say "++6 = ", ++$rand_num;
say "6-- = ", $rand_num--;
say "--6 = ", --$rand_num;


# Order of operations

say "3 + 2 * 5 = ", 3 + 2 * 5;
say "(3 + 2) * 5 = ", (3 + 2) * 5;
