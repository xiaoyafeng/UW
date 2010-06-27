package UW::Schema::Result::Store;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("store");
__PACKAGE__->add_columns(
  "store_id",
  { data_type => "NUMBER", default_value => undef, is_nullable => 0, size => 38 },
  "store_name",
  {
    data_type => "VARCHAR2",
    default_value => undef,
    is_nullable => 1,
    size => 2000,
  },
  "address",
  {
    data_type => "VARCHAR2",
    default_value => undef,
    is_nullable => 1,
    size => 2000,
  },
  "phone_number",
  {
    data_type => "VARCHAR2",
    default_value => undef,
    is_nullable => 1,
    size => 2000,
  },
);
__PACKAGE__->set_primary_key("store_id");
__PACKAGE__->has_many(
  "sale_detaileds",
  "UW::Schema::Result::SaleDetailed",
  { "foreign.store_id" => "self.store_id" },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2010-05-29 09:32:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UW0TihEgwMvy+fVqDi13YQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
