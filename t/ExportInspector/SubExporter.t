use strict;
use warnings;

use lib 't/lib', 'test-data/lib';

use Test::Differences qw( eq_or_diff );
use Test::More import => [qw( done_testing is is_deeply ok subtest )];
use TestHelper qw( inspector );
use Test::Needs qw(
    Import::Into
    MetaCPAN::Moose
    Moose
    MooseX::Types::Moose
    MooseX::Types::Path::Class
    Path::Class
);

subtest 'Moose Type Library' => sub {
    my $log         = [];
    my ($inspector) = inspector('Local::MooseTypeLibrary');
    my $exports     = $inspector->explicit_exports;

    is( $exports->{is_Bool}, 'Bool', 'is_ aliased' );
    is( $exports->{to_File}, 'File', 'to_ aliased' );
    ok(
        !exists $exports->{to_Str},
        'Coercion does not exist'
    );
};

subtest 'Moo' => sub {
    my $module = 'Moo';

    my ($inspection) = inspector('Moo');

    is_deeply(
        $inspection->implicit_exports,
        {
            after   => 'after',
            around  => 'around',
            before  => 'before',
            extends => 'extends',
            has     => 'has',
            with    => 'with',
        },
        'exports'
    );
};

subtest 'ViaSubExporter' => sub {
    my ($inspector) = inspector('Local::ViaSubExporter');
    is_deeply(
        $inspector->explicit_exports,
        {
            bar => 'bar',
            foo => 'foo',
        },
        'exports'
    );
};

subtest 'MyOwnMoose' => sub {
    my ( $inspector, $log ) = inspector('Local::MyOwnMoose');

    is_deeply(
        $inspector->implicit_exports,
        {
            after    => 'after',
            around   => 'around',
            augment  => 'augment',
            before   => 'before',
            blessed  => 'blessed',
            confess  => 'confess',
            extends  => 'extends',
            has      => 'has',
            inner    => 'inner',
            isa      => 'isa',
            meta     => 'meta',
            override => 'override',
            super    => 'super',
            with     => 'with',
        },
        'exports'
    );
};

subtest 'MetaCPAN::Moose' => sub {
    my ( $inspector, $log ) = inspector('MetaCPAN::Moose');
    my $expected_export_list = {
        after    => 'after',
        around   => 'around',
        augment  => 'augment',
        before   => 'before',
        blessed  => 'blessed',
        confess  => 'confess',
        extends  => 'extends',
        has      => 'has',
        inner    => 'inner',
        isa      => 'isa',
        meta     => 'meta',
        override => 'override',
        super    => 'super',
        with     => 'with',
    };

    is_deeply(
        $inspector->implicit_exports,
        $expected_export_list,
        'exports'
    );

    ( $inspector, $log ) = inspector('MetaCPAN::Moose');

    # Test again to ensure code can still run after removing and re-importing
    # Import::Into.
    eq_or_diff(
        $inspector->implicit_exports,
        $expected_export_list,
        'exports'
    );
};

done_testing();
