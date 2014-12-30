use Test::More;

use_ok('Alien::Libgnurx');

my $u = Alien::Libgnurx->new;

like( $u->libs, qr/magic/ );

done_testing;
