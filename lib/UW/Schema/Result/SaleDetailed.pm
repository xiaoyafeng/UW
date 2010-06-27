package UW::Schema::Result::SaleDetailed;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("sale_detailed");
__PACKAGE__->add_columns(
  "mer_id",
  { data_type => "NUMBER", default_value => undef, is_nullable => 0, size => 38 },
  "price",
  { data_type => "NUMBER", default_value => undef, is_nullable => 1, size => 8 },
  "mer_quantity",
  { data_type => "NUMBER", default_value => undef, is_nullable => 1, size => 38 },
  "datetime",
  { data_type => "DATE", default_value => undef, is_nullable => 0, size => 19 },
  "person_id",
  { data_type => "NUMBER", default_value => undef, is_nullable => 0, size => 38 },
  "store_id",
  { data_type => "NUMBER", default_value => undef, is_nullable => 0, size => 38 },
);
__PACKAGE__->set_primary_key("mer_id", "datetime", "person_id", "store_id");
__PACKAGE__->belongs_to(
  "store_id",
  "UW::Schema::Result::Store",
  { store_id => "store_id" },
);
__PACKAGE__->belongs_to(
  "mer_id",
  "UW::Schema::Result::Merchant",
  { mer_id => "mer_id" },
);
__PACKAGE__->belongs_to(
  "person_id",
  "UW::Schema::Result::Person",
  { person_id => "person_id" },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2010-05-29 09:32:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5Vpb3ZZVKJyMKWu4VA3Q5A


# You can replace this text with custom content, and it will be preserved on regeneration
1;
