# Packager Class
package Packager;

# Class information
our $VERSION = "0.0.1-20210909";

# Constants
# TODO

# Imports
use strict;
use warnings;
use POSIX;
use Scalar::Util qw(looks_like_number);
use File::Basename;
use Term::ANSIColor;
use IO::File;

# Static fields
# TODO

# TODO: Any class subroutines will go here

#
# new()
#
# This is the constructor for this class. It accepts named arguments only, or no
# arguments at all.
#
sub new {
    # Define subroutine variables
    my %args;
    my $class = shift(@_);
    my $self;

    # Fetch args
    %args = @_;
    
    # Initialize object
    $self = {
    };

    # Instantiate object
    bless($self, $class);

    # Return new object
    return $self;
}

#
# Setters and getters
#
sub set_algo {$_[0]->{_algo} = $_[1] if (defined($_[0]) && defined($_[1]));}
sub get_algo {return $_[0]->{_algo} if (defined($_[0]));}

# End Packager Class
1;
