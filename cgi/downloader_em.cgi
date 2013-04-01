#!/usr/bin/env perl
use strict;
use warnings;

use CGI;

my $BASE_URL = '/var/www/ecell/models/';

my $q= CGI->new();

my $model_name= $q->param('model');

unless ($model_name) {
    print "Status: 404 Not Found\n";
    exit 0;
} else {
    $model_name .= '.em';
}


my $REDIRECT_URL= $BASE_URL.$model_name;
if (-e $REDIRECT_URL) {

    open my $MODEL, '<', $REDIRECT_URL || _model_not_found();
    print $q->header('-type' => 'application/octet-stream', '-attachment' => $model_name);
    while (<$MODEL>) {
	print $_;
    }
    close $MODEL;
} else {
    print "Status: 404 Not Found\n";
}

sub _model_not_found {
    print CGI->header(-type => 'text/plain');
    print "Something error when downloading.";
    exit -1;
}
