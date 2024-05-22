#!/usr/bin/perl

use strict;
use warnings;
# use diagnostics;

use feature 'say';
use feature "switch";

# Hashes

my %employees = (
  "Sue" => 35,
  "Paul" => 43,
  "Sam" => 39
);

printf("Sue is %d\n", $employees{Sue});

$employees{Frank} = 44;

while(my ($k, $v) = each %employees){
  say "$k: $v";
}

my @ages = @employees{"Sue", "Sam"};
say @ages;

my @hash_array = %employees;

delete $employees{'Frank'};

while(my ($k, $v) = each %employees){
  say "$k: $v";
}

say ((exists $employees{'Sam'}) ? "Sam is here" : "No Sam");

for my $key (keys %employees){
  if($employees{$key} == 35){
    say "Hi Sue";
  }
}
