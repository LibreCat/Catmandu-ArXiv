#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use Test::Exception;

my $pkg;
BEGIN {
  $pkg = 'Catmandu::Importer::ArXiv';
  use_ok($pkg);
}
require_ok($pkg);

my %attrs = (
  query => 'all:electron'
);

my $importer = Catmandu::Importer::ArXiv->new(%attrs);

isa_ok($importer, $pkg);

can_ok($importer, 'each');

can_ok($importer, 'count');

my $num = $importer->count();

ok($num > 10, 'Got some results');


done_testing 6;
