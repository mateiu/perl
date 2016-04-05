#!/usr/bin/perl

use strict;
use warnings;

sub main {
	my $input = 'D:\Home\macuciug\perl_by_doing\00. recap\mateiu.txt';
	my $output = '>output.txt';
	
	open(INPUT, $input) or die "Input file $input not found.";
	open (OUTPUT, $output) or die "Can't create $output.";
	
	while (my $line = <INPUT>) {
	
		#word boundry \b  \b
		#ig case insenstive and global
		if ($line =~ /\begg\b/) {
		  $line =~ s/\byou\b/YOU/g;
		  print OUTPUT $line
		}
	}
	
	close (INPUT);
	close (OUTPUT);

}

main ();



