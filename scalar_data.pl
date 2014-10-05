#!/usr/bin/perl -w
use 5.014;
use utf8;
use warnings;

say 2**3; # exponentiation operator
say "hello" . "world";
say "hello" x 4; # string repetition operator
say "t" . 10 + 5;
say "t" . 10 - 5;
say "t" . 10 * 5;
my $perl = "perl";
say "hello $perl!";
say "hello" eq "hello";
say "hello" ne "hello";
say 10 == 10;
chomp(my $line = <STDIN>);
say $line;