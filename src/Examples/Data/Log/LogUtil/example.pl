#!/bin/perl -w

use strict;
use warnings;
use FindBin;
use Cwd;
use lib "../../../..";
use Data::Log::LogUtil;

my $exec_name = "$FindBin::RealScript";
my $exec_path = "$FindBin::RealBin/$FindBin::RealScript";
my $exec_dir = "$FindBin::RealBin";
my $original_cwd = getcwd();

my $log_listener = LogUtil->new(fifo => "test.fifo", socket => "test.S", log_file => "test.log", identifier => $exec_name);
$log_listener->listen();
my $client = LogUtil->new(socket => $ENV{LOGUTIL_SOCK});
$client->send(message => "test message main");
system("$exec_dir/sub1.pl");
system("$exec_dir/sub2.pl");
system("$exec_dir/sub3.pl");
$log_listener->close();

