use inc::Module::Install;

name        'LWP-UserAgent-Paranoid';
all_from    'lib/LWP/UserAgent/Paranoid.pm';
readme_from 'lib/LWP/UserAgent/Paranoid.pm';
license     'gplv2';

requires 'LWP::UserAgent';
requires 'LWPx::ParanoidHandler';
requires 'Net::DNS::Paranoid';
requires 'Scalar::Util';

test_requires 'Test::Requires';
test_requires 'Test::TCP';
test_requires 'HTTP::Server::PSGI';

sign;
WriteAll;
