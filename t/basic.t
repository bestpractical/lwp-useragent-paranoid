use strict;
use warnings;

use Test::More;
use LWP::UserAgent::Paranoid::Test;

my ($SERVER, $TCP) = server(sub { [200,[],["OK"]] });
my $ua = create_ua_ok();

get_status_is($ua, $SERVER, 403, "localhost is forbidden");

$ua->resolver->whitelisted_hosts(["127.0.0.1"]);
get_status_is($ua, $SERVER, 200, "localhost is now OK");

done_testing;
