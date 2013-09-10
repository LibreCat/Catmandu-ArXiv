use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name => 'Catmandu::ArXiv',
    license => 'perl',
    dist_author => [
        'Wouter Willaert <wouterw@inuits.eu>',
        'Vitali Peil <vitali.peil at uni-bielefeld.de>',
    ],
    dist_version_from => 'lib/Catmandu/ArXiv.pm',
    build_requires => {
        'Software::License' => 0,
        'Test::Exception' => 0,
        'Test::More' => 0,
    },
    requires => {
        'perl' => '5.10.1',
        'Catmandu' => '0.7',
        'Furl' => '2.19',
        'XML::LibXML::Simple' => '0.93',
    },
    add_to_cleanup => [qw(
        Catmandu-ArXiv*
    )],
    create_makefile_pl => 'traditional',
    create_license => 1,
);

$builder->create_build_script;
