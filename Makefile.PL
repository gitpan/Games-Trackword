use ExtUtils::MakeMaker;
WriteMakefile(
	NAME			=> 'Games::Trackword',
	VERSION_FROM	=> 'lib/Games/Trackword.pm', 
	PREREQ_PM		=> { 
		'Test::More' => 0.47,
	}, 
	NO_META			=> 1,

	($] < 5.005 ? () : (
		ABSTRACT	=> 'Find words on a Trackword grid.', 
		AUTHOR		=> 'Barbie <barbie@cpan.org>'
	)),
);
