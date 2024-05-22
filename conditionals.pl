#!/usr/bin/perl

use strict;
use warnings;
# use diagnostics;

use feature 'say';
use feature "switch";

# Conditional Operators: >, <, >=, <=, ==, !=
# Flasy values: 0, "", undef, "0"
# Logical Operators: !, &&, ||

my $age = 80;
my $is_not_intoxicated = 1;
my $age_last_exam = 16;

if($age < 19){
  say "You can't drive";
} elsif(!$is_not_intoxicated){
  say "You can't drive";
} else {
  say "You can drive";
}

if(($age >= 1) && ($age < 16)){
  say "You can't drive";
} elsif(!$is_not_intoxicated){
  say "You can't drive";
} elsif(($age >= 80) && (($age > 100) || (($age - $age_last_exam) > 5))){
  say "You can't drive";
} else {
  say "You can drive";
}

# Comparison operator

if('a' eq 'b'){
  say "a equals b";
} else {
  say "a doesn't equal b";
}

unless(!$is_not_intoxicated){
  say "Get Sober";
}

# Ternary operator

say (($age > 18) ? "Can Vote" : "Can't Vote");