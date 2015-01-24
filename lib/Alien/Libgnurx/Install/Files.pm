package Alien::Libgnurx::Install::Files;

# allows other packages to use ExtUtils::Depends like so:
#   use ExtUtils::Depends;
#   my $p = new ExtUtils::Depends MyMod, Alien::Libgnurx;
# and their code will have all Libgnurx available at C level

use strict;
use warnings;

use Alien::Libgnurx qw(Inline);
BEGIN { *Inline = *Alien::Libgnurx::Inline }
sub deps { () }
