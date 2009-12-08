package Parse::FixedRecord::Column;
use Moose::Role;
use MooseX::Types::Moose      qw(Int);
use Moose::Util::TypeConstraints;

has width => (
    is        => 'ro',
    isa       => 'Int',
    );

sub Moose::Meta::Attribute::Custom::Trait::Column::register_implementation { 
    'Parse::FixedRecord::Column' 
};

=head1 NAME

Parse::FixedRecord::Column - trait for FixedRecord columns

=head1 DESCRIPTION

Responsible for declaring the C<width> column.

=head3 C<register_implementation>

Declares the trait alias C<Column>.

=head1 AUTHOR and LICENSE

    osfameron@cpan.org - see Parse::FixedRecord for full details and copyright

=cut

1;
