package Animal::Lion;

use Animal::Cat;
use strict;

our @ISA = qw(Animal::Cat);

sub get_sound {
  my ($self) = @_;
  return $self->{_name}, " says Roarr!";
}

1;
# 1 is returned because a package is required to return a true value
