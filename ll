#!/usr/bin/perl
use strict;

for my $url (@ARGV) {
  if ($url =~ m/ll=(-?\d+\.\d+),(-?\d+\.\d+)/) { 
    my $lat = $1;
    print (($lat > 0) ? "N" : "S");
    $lat = abs($lat);
    print (" $lat,");
    my $lon = $2;
    print (($lon > 0) ? " E" : " W");
    $lon = abs($lon);
    print " $lon\n";
  }
}
