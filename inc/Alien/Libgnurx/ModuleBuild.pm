package Alien::Libgnurx::ModuleBuild;

use strict;
use warnings;

use parent 'Alien::Base::ModuleBuild';
use File::Spec;
use Alien::MSYS;

sub alien_do_commands {
	my ($self, $phase) = @_;
	if( $^O eq 'MSWin32' ) {
		Alien::MSYS::msys( sub {
			$self->SUPER::alien_do_commands($phase);
		});
	}
}

package
	main;

sub alien_patch {
	my $inc_dir = File::Spec->catfile(qw(.. .. inc));
	my $patch_file = File::Spec->catfile( $inc_dir, 'patch', 'mingw-libgnurx-2.5.1' );
	system(qw(patch --binary -i), $patch_file);
}

1;
