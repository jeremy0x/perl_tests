#!/usr/bin/perl

use strict;
use warnings;
# use diagnostics;

use feature 'say';
use feature "switch";

# Loops

# For loop
for(my $i = 0; $i < 10; $i++){
  say $i;
}

# While loop
my $i = 0;

while($i < 10){
  if($i % 2 == 0){
    $i++;
    next; # Continue
  }
  if($i == 7){last;} # Break
  say $i;
  $i++;
}

# Do while loop
my $lucky_num = 7;

my $guess;

do {
  say "Guess a Number Between 1 and 10";
  $guess = <STDIN>;
} while $guess != $lucky_num;

say "You Guessed 7";

# Given when statement (Switch) 
# ! given is deprecated

my $age_old = 18;

given($age_old){
  when($_ > 16){
    say "Drive";
    continue;
  }
  when($_ > 17){
    say "Go Vote";
  }
  default {
    say "Nothing Special";
  }
}
