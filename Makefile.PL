use inc::Module::Install;

name        'LWP-UserAgent-Paranoid';
all_from    'lib/LWP/UserAgent/Paranoid.pm';
readme_from 'lib/LWP/UserAgent/Paranoid.pm';
license     'gplv2';

requires 'LWP::UserAgent';
requires 'LWPx::ParanoidHandler';
requires 'Net::DNS::Paranoid';

sign;
WriteAll;
