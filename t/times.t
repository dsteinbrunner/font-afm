# This test is here basically to work around Test::Harness bug.

print "1..1\n";
require Font::Metrics::TimesRoman;

sub width
{
    my($string, $wx) = @_;
    my $w = 0;
    for (unpack("C*", $string)) {
	$w += $wx->[$_];
    }
    $w;
}

print "not " unless
    abs(width("Perl", \@Font::Metrics::TimesRoman::wx) - 1.611) < 1.0e-6;
print "ok 1\n";
