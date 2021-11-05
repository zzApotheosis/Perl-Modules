#!/bin/perl -w

use strict;
use warnings;
use FindBin;
use lib "../../../..";
use Data::Log::LogUtil;

my $log_client1 = LogUtil->new(log_file => $ENV{LOGUTIL_FILE});
$log_client1->send(identifier => $FindBin::RealScript, message => "test message 3");
