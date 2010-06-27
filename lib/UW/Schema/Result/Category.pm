package UW::Schema::Result::Category;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("category");
__PACKAGE__->add_columns(
  "cate_id",
  { data_type => "NUMBER", default_value => undef, is_nullable => 0, size => 38 },
  "cate_name",
  {
    data_type => "VARCHAR2",
    default_value => undef,
    is_nullable => 1,
    size => 2000,
  },
);
__PACKAGE__->set_primary_key("cate_id");
__PACKAGE__->has_many(
  "merchants",
  "UW::Schema::Result::Merchant",
  { "foreign.cate_id" => "self.cate_id" },
);
__PACKAGE__->has_many(
  "mer_attributes",
  "UW::Schema::Result::MerAttribute",
  { "foreign.cate_id" => "self.cate_id" },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2010-05-29 09:32:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5R0qdO/1cKHd6mgYjV/lJA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
