#!perl

use Test::More tests => 1;

BEGIN {
    use_ok( 'Parse::FixedRecord' );
}

diag( "Testing Parse::FixedRecord $Parse::FixedRecord::VERSION, Perl $], $^X" );
