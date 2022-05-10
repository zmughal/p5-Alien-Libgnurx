use Test2::V0;
use Test::Alien;
use Test::Alien::Diag;
use Alien::Libgnurx;

alien_diag 'Alien::Libgnurx';
alien_ok 'Alien::Libgnurx';

# my $xs = <<'END';
# #include "EXTERN.h"
# #include "perl.h"
# #include "XSUB.h"
# ...
#
# MODULE = main PACKAGE = main
#
# ...
# END
# xs_ok $xs, with_subtest {
#   ...
# };

done_testing;
