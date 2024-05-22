package Animal::Cat;

use strict;
use warnings;

sub new {
  my $class = shift;
  my $self = {
    _name => shift,
    _owner => shift,
  };
  bless $self, $class;
  return $self;
}

sub get_name {
  my ($self) = @_;
  return $self->{_name};
}

sub set_name {
  my ($self, $name) = @_;
  $self->{_name} = $name if defined($name);
  return $self->{_name};
}

sub get_sound {
  my ($self) = @_;
  return $self->{_name}, " says meow";
}

1;
# 1 is returned because a package is required to return a true value
