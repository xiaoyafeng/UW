use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Catalyst::Test', 'UW' }
BEGIN { use_ok 'UW::Controller::Site' }

ok( request('/site')->is_success, 'Request should succeed' );
done_testing();
