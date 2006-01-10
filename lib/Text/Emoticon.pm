package Text::Emoticon;

use strict;
our $VERSION = '0.01';

use UNIVERSAL::require;

sub new {
    my $class  = shift;
    my $driver = shift;
    my $args   = @_ == 1 ? $_[0] : {@_};

    my $subclass = "Text::Emoticon::$driver";
       $subclass->require or die $@;

    $subclass->new(%$args);
}

1;
__END__

=head1 NAME

Text::Emoticon - Factory class for Yahoo! and MSN emoticons

=head1 SYNOPSIS

  use Text::Emoticon;

  my $emoticon = Text::Emoticon->new('MSN', { strict => 1, xhtml => 0 });
  print $emoticon->filter('Hello ;)');

=head1 DESCRIPTION

Text::Emoticon is a factory class to dispatch MSN/YIM emoticon
set. It's made to become handy to be used in other applications like
Kwiki/MT plugins.

=head1 AUTHOR

Tatsuhiko Miyagawa E<lt>miyagawa@bulknews.netE<gt>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<Text::Emoticon::MSN>, L<Text::Emoticon::Yahoo>

=cut
