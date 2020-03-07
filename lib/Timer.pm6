unit module Timer:ver<0.0.2>:auth<github:thundergnat>;

sub timer (&callable) is export { &callable(), now - ENTER now }

=begin pod

=head1 NAME

Timer [![Build Status](https://travis-ci.org/thundergnat/Timer.svg?branch=master)](https://travis-ci.org/thundergnat/Timer)
=head1 SYNOPSIS

Provides a simple timer function to measure runtime of a callable block.
Returns the return value of the block and the time elapsed in seconds.

=begin code
use Timer;

# Sum the reciprocals of 1 to 1000, 100 times and return
# the sum and the total execution time for the block.

say timer { my $i = sum((1..1000) »R/» 1) for ^100; $i }

# prints (7.485470860550344 1.5826559) (times will vary)
=end code

=head1 DESCRIPTION

A simple timer, useful to evaluate run time of a callable block without needing
to set up variables and calls to a time function.

Extremely simple and easy to implement, but I found myself writing it over
and over when trying to refactor / optimize code, so I factored it out into a
module.

=head1 AUTHOR

2018 Steve Schulze aka thundergnat

This package is free software and is provided "as is" without express or implied
warranty.  You can redistribute it and/or modify it under the same terms as Perl
itself.

=head1 LICENSE

Licensed under The Artistic 2.0; see LICENSE.

=end pod
