use strict;
use warnings;

use lib 't/lib';

use TestHelper qw( doc );
use Test::More import => [ 'done_testing', 'is' ];

my ($doc) = doc( filename => 'test-data/english.pl' );

my $expected = <<'EOF';
use strict;
use warnings;

use English qw( -no_match_vars );
EOF

is( $doc->tidied_document, $expected, '-no-match-vars is preserved' );

done_testing();
