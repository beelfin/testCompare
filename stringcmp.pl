#!/usr/local/bin/perl 
# stringcmp.pl 

use strict;
use warnings;

use File::Basename qw(dirname);
use Cwd  qw(abs_path);
use lib dirname(abs_path $0) . '/lib';

use String::Compare;

print "Hello World\n";

sub test() {
	my $str1 = "hello world";
	my $str2 = "hello world";
	my $str3 = "helloworld";
	my $str4 = "hello world";
	my $str5 = "hello world!";
	my $str6 = "hello world!!";

	print "$str1\n";
	print "$str2\n";

	if ($str1 eq $str2) {
		print "same\n";
	} else {
		print "diff\n";
	}

	my $cmp12 = compare($str1, $str2); # cmp is not consider capital
		my $cmp13 = compare($str1, $str3);
	my $cmp14 = compare($str1, $str4);
	my $cmp15 = compare($str1, $str5);
	my $cmp16 = compare($str1, $str6);

	if ($cmp12 > $cmp13) {
		print "com12 win $cmp12\n";
	} else {
		print "com13 win $cmp13\n";
	}

	print "$cmp12    $cmp13      $cmp14\n";
	print "$cmp15    $cmp16\n";

	return;
}
