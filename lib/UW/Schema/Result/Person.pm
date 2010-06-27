package UW::Schema::Result::Person;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("person");
__PACKAGE__->add_columns(
  "person_id",
  { data_type => "NUMBER", default_value => undef, is_nullable => 0, size => 38 },
  "first_name",
  {
    data_type => "VARCHAR2",
    default_value => undef,
    is_nullable => 1,
    size => 2000,
  },
  "last_name",
  {
    data_type => "VARCHAR2",
    default_value => undef,
    is_nullable => 1,
    size => 2000,
  },
  "sex",
  {
    data_type => "VARCHAR2",
    default_value => undef,
    is_nullable => 1,
    size => 20,
  },
  "birth_date",
  { data_type => "DATE", default_value => undef, is_nullable => 1, size => 19 },
  "employee_date",
  { data_type => "DATE", default_value => undef, is_nullable => 1, size => 19 },
);
__PACKAGE__->set_primary_key("person_id");
__PACKAGE__->has_many(
  "duties",
  "UW::Schema::Result::Duty",
  { "foreign.person_id" => "self.person_id" },
);
__PACKAGE__->has_many(
  "purchase_detaileds",
  "UW::Schema::Result::PurchaseDetailed",
  { "foreign.person_id" => "self.person_id" },
);
__PACKAGE__->has_many(
  "sale_detaileds",
  "UW::Schema::Result::SaleDetailed",
  { "foreign.person_id" => "self.person_id" },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2010-05-29 09:32:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3QfSGWRkmpNs81lkmMuYdg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
