#!/usr/bin/perl -w
use 5.014;
use utf8;
use strict;
use warnings;

my @array01 = ("test","test2");
my $length = @array01;
say $array01[0];
say @array01;
say $#array01;
say $length;

# my @array2 = (1..10);
my @array2 = (1..10 , 0 , 2..6);
say @array2;

# my @qw1 = qw(perl java php c ruby);
my @qw1 = qw{perl java php c ruby};
say @qw1;

my ($fred, $barney, $dino) = ("flintstone", "rubble", undef);
say $fred;
say $barney;
say $dino;

($fred, $barney) = ($barney, $fred);
say $fred;
say $barney;

my @pop_array = 5..9;
say pop(@pop_array);
say @pop_array;
my $array_tmp = pop @pop_array;
say @pop_array;
pop @pop_array;
say @pop_array;

my @push_array;
push(@push_array, 0);
say @push_array;
push @push_array, 1;
say @push_array;
push @push_array, 5..9;
say @push_array;
my @push_array2 = 1..5;
push @push_array, @push_array2;
say @push_array;

my @shift_array = qw(java ruby perl);
shift(@shift_array);
shift @shift_array;
say @shift_array;
unshift(@shift_array, "php");
unshift @shift_array, "c";
say @shift_array;

my @splice_array = qw(java ruby perl c php);
# my @removed = splice @splice_array, 2;
# my @removed = splice @splice_array, 1, 2;
my @removed = splice @splice_array, 1, 2, qw(python);
say @splice_array;
say @removed;

foreach my $language (qw(java c perl)) {
    say "Beautiful language is $language.";
}

my @languages = qw(java c perl);
foreach my $language (@languages) {
    $language = "\t$language";
    $language .= "\n";
}
say "Programming Language:\n", @languages;

@languages = qw(java c perl);
foreach (@languages) {
    say"Beautiful language is  $_.";
}

my @reverse_array = 6..10;
say reverse @reverse_array;
say reverse 6..10;

my @sort_array = qw(java ruby perl c php);
say sort @sort_array;
say reverse sort @sort_array;

my @each_array = qw(java ruby perl c php);
while( my($index, $value) = each @each_array) {
    say "$index:$value";
}
say "size " . scalar @each_array . ".";

chomp(my @input_array = <STDIN>);
foreach (@input_array) {
    say "Input : $_.";
}

# question1
chomp(my @reverse_input_array = reverse <STDIN>);
foreach (@reverse_input_array) {
    say "Input : $_.";
}

# question2
chomp(my @num_array = <STDIN>);
my @people_array = qw(fred bettry barney dino wilma pebbles bamm-bamm);
foreach (@num_array) {
    say $people_array[$_ - 1];
}

# question3
chomp(my @input_sort_array = sort <STDIN>);
say @input_sort_array;