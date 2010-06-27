package UW::View::TT_view;
use strict;
use utf8;
use warnings;
use base 'Catalyst::View::TT';

__PACKAGE__->config(TEMPLATE_EXTENSION => '.tt',
		    ENCODING    => 'utf-8',
		   INCLUDE_PATH => [
			UW->path_to('root'),
				],
			TIMER    => 0,
			WRAPPER  => 'wrapper.tt',
);

=head1 NAME

UW::View::TT_view - TT View for UW

=head1 DESCRIPTION

TT View for UW.

=head1 SEE ALSO

L<UW>

=head1 AUTHOR

xyf,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
