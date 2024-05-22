#!/usr/bin/perl

use strict;
use warnings;
# use diagnostics;

use feature 'say';
use feature "switch";

# File IO

my $emp_file = 'employees.txt';

# Open for reading
open my $fh, '<', $emp_file
  or die "Can't open file: $_";

while(my $info = <$fh>){
  chomp($info);
  my ($emp_name, $job, $id) = split /:/, $info;
  say "$emp_name is a $job and has the id $id";
}

close $fh or die "Couldn't close file: $_";

# Open for appending data
open $fh, '>>', $emp_file
  or die "Can't open file: $_";

print $fh "Mark:Salesman:124\n";

close $fh or die "Couldn't close file: $_";

# Open for reading and writing
open $fh, '+<', $emp_file
  or die "Can't open file: $_";

seek $fh, 0, 0;

print $fh "Phil:Salesman:125\n";

close $fh or die "Couldn't close file: $_";
