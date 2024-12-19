#!/usr/bin/perl

my %hosts;

open( my $input_fh, "<", "$ENV{HOME}/.ssh/known_hosts" ) || die;
foreach (<$input_fh>) {
    my @hostfields = split / /;
    my $thishost = $hostfields[0];
    # skip bracketed hosts for now
    if ($thishost !~ /^\[/) {
	if (!exists $hosts{$thishost}) {
	    $hosts{$thishost} = 1;
	    print "$thishost\n";
	}
    }
}

close($input_fh);
