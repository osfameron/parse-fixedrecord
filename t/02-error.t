#!/usr/bin/perl

use strict; use warnings;
use Test::More tests => 1;
use Test::Exception;
use FindBin '$Bin';

use lib "$Bin/lib";
use Row::Test;

# my $test_data = 'Fred J Bloggs | 2009-03-17 | 02:03';
my $test_data = 'Fred J Bloggs | Not a date | 02:03';

throws_ok {
    my $obj = Row::Test->parse( $test_data );
    } qr/Attribute \(date\) does not pass the type constraint because: Validation failed for 'Date' failed with value undef/;

