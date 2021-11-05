#!/bin/perl -w

use strict;
use warnings;
use lib "../..";
use Data::Integrity::HashUtil;

unlink("test.json") if -e "test.json";

my $h = HashUtil->new();
#$h->hash_walk(algo => "sha512", basedir => "/etc"); # This can be used to walk an entire directory and digest each file in it. The resulting JSON data must be written using $h->write_data()
$h->add_file("testfile.txt");
$h->walk(basedir => "../..", verbose => 1);
$h->digest(algo => "sha512", verbose => 1);
$h->write_data(outfile => "test.json");

$h->read_data(infile => "test.json");
$h->verify();
