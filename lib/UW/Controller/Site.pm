package UW::Controller::Site;
use utf8;
use Moose;
use namespace::autoclean;
BEGIN {extends 'Catalyst::Controller'; }
=head1 NAME

UW::Controller::Site - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut
sub begin : Private {
  my ($self, $c) = @_;
	$c->stash->{current_view} = 'TT_view';	
}
sub default : Local {

	my ( $self, $c ) = @_;
	  $c->stash(no_wrapper => 1);
          $c->stash(template => 'index.tt');


}

sub purchase_manage : Local {
    my ( $self, $c ) = @_;
     $c->stash(no_wrapper => 0);
   $c->stash(merchants => [$c->model('WindyDB::Merchant')->all]);
   $c->stash(persons => [$c->model('WindyDB::person')->all]);
    $c->stash(template => 'purchase_manage.tt');
}
sub sale_manage : Local {
	 my ( $self, $c) = @_;
	$c->stash(no_wrapper => 0);
	  $c->stash(merchants => [$c->model('WindyDB::Merchant')->all]);
          $c->stash(persons => [$c->model('WindyDB::person')->all]);

	$c->stash(template => 'sale_manage.tt');
}     
sub stock_query : Local {

my ( $self, $c) = @_;
	$c->stash(no_wrapper => 0);
  $c->stash(merchants => [$c->model('WindyDB::Merchant')->all]);
   $c->stash(persons => [$c->model('WindyDB::person')->all]);

	$c->stash(template => 'stock_query.tt');



}



sub purchase_query : Local {
my ( $self, $c) = @_;
	$c->stash(no_wrapper => 0);
 $c->stash(merchants => [$c->model('WindyDB::Merchant')->all]);
   $c->stash(persons => [$c->model('WindyDB::person')->all]);

	$c->stash(template => 'purchase_query.tt');
}

sub sale_query : Local{
my ( $self, $c) = @_;
	$c->stash(no_wrapper => 0);
    $c->stash(merchants => [$c->model('WindyDB::Merchant')->all]);
   $c->stash(persons => [$c->model('WindyDB::person')->all]);

	$c->stash(template => 'sale_query.tt');


}
sub stock_manage : Local{
my ( $self, $c) = @_;
	$c->stash(no_wrapper => 0);

	$c->stash(template => 'stock_manage.tt');


}
sub upload : Global {
        my ($self, $c) = @_;

        if ( $c->request->parameters->{form_submit} eq 'yes' ) {
				$c->stash(test => $c->request->parameters->{text_test});
            if ( my $upload = $c->request->upload('my_file') ) {

                my $filename = $upload->filename;
                my $target   = "/tmp/upload/$filename";

                unless ( $upload->link_to($target) || $upload->copy_to($target) ) {
                    die( "Failed to copy '$filename' to '$target': $!" );
                }
            }
        }

        $c->stash->{template} = 'file_upload.tt';
    }
=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

