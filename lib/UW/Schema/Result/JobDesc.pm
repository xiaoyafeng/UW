package UW::Schema::Result::JobDesc;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("job_desc");
__PACKAGE__->add_columns(
  "job_id",
  { data_type => "NUMBER", default_value => undef, is_nullable => 0, size => 38 },
  "job_name",
  {
    data_type => "VARCHAR2",
    default_value => undef,
    is_nullable => 1,
    size => 200,
  },
  "job_desc",
  {
    data_type => "VARCHAR2",
    default_value => undef,
    is_nullable => 1,
    size => 2000,
  },
);
__PACKAGE__->set_primary_key("job_id");
__PACKAGE__->has_many(
  "duties",
  "UW::Schema::Result::Duty",
  { "foreign.job_id" => "self.job_id" },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2010-05-29 09:32:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:T8P01jsxy0YLUPgS+tD84Q


# You can replace this text with custom content, and it will be preserved on regeneration
1;
