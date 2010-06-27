package UW::Schema::Result::Duty;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("duty");
__PACKAGE__->add_columns(
  "person_id",
  { data_type => "NUMBER", default_value => undef, is_nullable => 0, size => 38 },
  "job_id",
  { data_type => "NUMBER", default_value => undef, is_nullable => 0, size => 38 },
);
__PACKAGE__->set_primary_key("job_id", "person_id");
__PACKAGE__->belongs_to(
  "person_id",
  "UW::Schema::Result::Person",
  { person_id => "person_id" },
);
__PACKAGE__->belongs_to(
  "job_id",
  "UW::Schema::Result::JobDesc",
  { job_id => "job_id" },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2010-05-29 09:32:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MMnmVkS9JB55ON5az5nJ3w


# You can replace this text with custom content, and it will be preserved on regeneration
1;
