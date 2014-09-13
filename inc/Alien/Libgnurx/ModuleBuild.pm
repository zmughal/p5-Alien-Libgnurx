package Alien::Libgnurx::ModuleBuild;

use strict;
use warnings;

use File::Spec;

package
	main;

sub alien_patch {
	my $inc_dir = File::Spec->catfile(qw(.. .. inc));
	my $patch_file = File::Spec->catfile( $inc_dir, 'patch', 'mingw-libgnurx-2.5.1' );
	system(qw(patch --binary -i), $patch_file);
}

1;
