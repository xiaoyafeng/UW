package UW::Schema::Result::MerAttribute;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("mer_attribute");
__PACKAGE__->add_columns(
  "mer_id",
  { data_type => "NUMBER", default_value => undef, is_nullable => 0, size => 38 },
  "sex",
  {
    data_type => "VARCHAR2",
    default_value => undef,
    is_nullable => 1,
    size => 20,
  },
  "cate_id",
  { data_type => "NUMBER", default_value => undef, is_nullable => 1, size => 38 },
  "color",
  {
    data_type => "VARCHAR2",
    default_value => undef,
    is_nullable => 1,
    size => 50,
  },
);
__PACKAGE__->set_primary_key("mer_id");
__PACKAGE__->belongs_to(
  "cate_id",
  "UW::Schema::Result::Category",
  { cate_id => "cate_id" },
);
__PACKAGE__->belongs_to(
  "mer_id",
  "UW::Schema::Result::Merchant",
  { mer_id => "mer_id" },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2010-05-29 09:32:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eVzcxuoDLIuIJvpdvikqfQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
