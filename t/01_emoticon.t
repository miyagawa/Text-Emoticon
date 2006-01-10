use strict;
use Test::More 'no_plan';

use Text::Emoticon;

for my $driver (qw( MSN Yahoo )) {
    eval {
        my $msn = Text::Emoticon->new($driver);
        my $f = $msn->filter('Hi :)');
        like $f, qr/img/;
    };
}

