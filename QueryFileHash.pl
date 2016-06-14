#! /usr/bin/perl

use warnings;
use strict;
use LWP;

# Change $filehash to the file hash you are looking for
my $url = 'https://hashlookup.metadefender.com/v2/hash/'.$filehash; 
my $browser = LWP::UserAgent->new;
my $response = $browser->get($url, apikey=>'YOUR_API_KEY');

die "Error at $url\n ", $response->status_line, "\n Aborted"
 unless $response->is_success;

print $response->content;

 # Write to file
 #open(my $fh, '>', 'report.txt');
 #print $fh $response->content;
 #close $fh;

print "\nDone\n";




















