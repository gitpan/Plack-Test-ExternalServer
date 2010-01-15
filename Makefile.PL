
use strict;
use warnings;



use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Plack-Test-ExternalServer',
  NAME      => 'Plack::Test::ExternalServer',
  AUTHOR    => "Florian\ Ragwitz\ \<rafl\@debian\.org\>",
  ABSTRACT  => "Run\ HTTP\ tests\ on\ external\ live\ servers",
  VERSION   => '0.01',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Test::More" => '0.89',
    "URI" => '0',
    "LWP::UserAgent" => '0',
    "Plack::Test" => '0',
    "Test::TCP" => '0',
    "Plack::Loader" => '0',
    "HTTP::Request::Common" => '0',
  },
  test => {TESTS => 't/*.t'}
);

