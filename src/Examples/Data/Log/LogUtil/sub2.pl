#!/bin/perl -w

use strict;
use warnings;
use lib "../../../..";
use Data::Log::LogUtil;

my $log_client1 = LogUtil->new(fifo => $ENV{LOGUTIL_FIFO});
$log_client1->send(message => "test message 2");
