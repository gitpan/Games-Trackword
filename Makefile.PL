use ExtUtils::MakeMaker;
WriteMakefile(
	NAME => 'Games::Trackword',
	VERSION_FROM => 'lib/Games/Trackword.pm', 
	PREREQ_PM => { 
		'Test::More' => 0.45,
	}, 
	($] < 5.005 ? () : (
		ABSTRACT_FROM => 'lib/Games/Trackword.pm', 
		AUTHOR     => 'Barbie <barbie@missbarbell.co.uk>'
	)),
);
