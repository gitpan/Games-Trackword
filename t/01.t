#!/usr/bin/perl -w

use Test::More qw/no_plan/;

use Games::Trackword;

my @boards = ( 
	'TRA WKC ORD',
	'TRAC ROWK DTR WKCA',
	'TRACK TDROW RACKW RTDRO ACKWO',
);

my @good = qw/TRACK trackword WORD/;
my @fail = qw/BEETS TITHED THREE PEEP QEET TEEPEE/;

foreach my $string (@boards) {
	my $board = Games::Trackword->new($string);
	isa_ok $board, "Games::Trackword";
	foreach my $word (@good) {
	  ok $board->has_word($word), "Can't find $word!";
	}
	foreach my $word (@fail) {
	  ok !$board->has_word($word), "Found $word!";
	}
}

@boards = ( 
	'QEE ATN RAE',
	'QATAR PLACE QEENS BLANK IDEAS',
);

my $trackword = 'QEEN';
my $boogle = 'QUEEN';
my $both = 'QATAR';

foreach my $string (@boards) {
	my $board = Games::Trackword->new($string);
	isa_ok $board, "Games::Trackword";
	ok $board->has_word($trackword), "Can't find $trackword!";
	ok !$board->has_word($boogle), "Found $boogle!";
	ok $board->has_word($both), "Can't find $both!";

	$board->qu;
	ok !$board->has_word($trackword), "Found $trackword!";
	ok !$board->has_word($both), "Found $both!";
	ok $board->has_word($boogle), "Can't find $boogle!";
}

