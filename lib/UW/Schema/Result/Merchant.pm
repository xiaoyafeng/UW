package UW::Schema::Result::Merchant;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("merchant");
__PACKAGE__->add_columns(
  "mer_id",
  { data_type => "NUMBER", default_value => undef, is_nullable => 0, size => 38 },
  "cate_id",
  { data_type => "NUMBER", default_value => undef, is_nullable => 1, size => 38 },
  "mer_name",
  {
    data_type => "VARCHAR2",
    default_value => undef,
    is_nullable => 1,
    size => 2000,
  },
);
__PACKAGE__->set_primary_key("mer_id");
__PACKAGE__->belongs_to(
  "cate_id",
  "UW::Schema::Result::Category",
  { cate_id => "cate_id" },
);
__PACKAGE__->has_many(
  "merchant_storeds",
  "UW::Schema::Result::MerchantStored",
  { "foreign.mer_id" => "self.mer_id" },
);
__PACKAGE__->has_many(
  "mer_attributes",
  "UW::Schema::Result::MerAttribute",
  { "foreign.mer_id" => "self.mer_id" },
);
__PACKAGE__->has_many(
  "purchase_detaileds",
  "UW::Schema::Result::PurchaseDetailed",
  { "foreign.mer_id" => "self.mer_id" },
);
__PACKAGE__->has_many(
  "sale_detaileds",
  "UW::Schema::Result::SaleDetailed",
  { "foreign.mer_id" => "self.mer_id" },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2010-05-29 09:32:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OmQCjsusowhf6PaBoKVdqg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
