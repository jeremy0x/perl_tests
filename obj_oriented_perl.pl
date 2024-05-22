#!/usr/bin/perl

use strict;
use warnings;
# use diagnostics;

use feature 'say';
use feature "switch";

# Object Oriented Perl

use lib 'lib';
use Animal::Cat;

my $whiskers = new Animal::Cat("whiskers", "Derek");

say $whiskers->get_name();
$whiskers->set_name("Whiskers");
say $whiskers->get_name();
say $whiskers->get_sound();

# Inheritance

use Animal::Lion;

my $king = new Animal::Lion("King", "No Owner");

say $king->get_name();
$king->set_name("Mufasa");
say $king->get_name();
say $king->get_sound();
