#!perl

use strict;
use warnings;

use lib 't/lib', 'test-data/lib';

use TestHelper qw( doc );
use Test::More import => [qw( done_testing is )];
use Test::Needs qw( List::AllUtils );

my ($doc) = doc(
    filename => 'test-data/lib/Local/After.pm',
);

my $expected = <<'EOF';
package Local::After;

use Moose;
use List::AllUtils qw( uniq );

my @foo = uniq { 1..10 };

after run => sub { my @foo = uniq ( 1..9 ) };

sub run { 1; }
1;
EOF

is(
    $doc->tidied_document,
    $expected,
    'Moose::after() is not assigned to List::AllUtils'
);

done_testing;
