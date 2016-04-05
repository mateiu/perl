#!/usr/bin/perl

use strict;
use warnings;

sub main {	
	my $input = 'D:\Home\macuciug\perl_by_doing\00. recap\mateiu.txt';
	my $output = '>output.txt';
	my $VOL_NR=0;
	
	open(INPUT, $input) or die "Input file $input not found.";
	open (OUTPUT, $output) or die "Can't create $output.";
	
	while (my $line = <INPUT>) {
	
		#word boundry \b  \b
		#ig case insenstive and global
		if ($line =~ /Processed Volatility Data, (.)/) {
		  #$line =~ s/\byou\b/YOU/g;
		  print OUTPUT $1;
		  print "VOL_NR is $1\n";
		  system("VOL_NR=$1");
		  system("echo $VOL_NR");
		}
	}
	
	close (INPUT);
	close (OUTPUT);

}

main ();



