#!/usr/bin/perl
#
# PROGRAM:      EHFinder.pl
# AUTHOR:       Jeff Cooper, AA1WW,  aa1ww@hotmail.com
# DESCRIPTION:  This Perl script searches through the EH directory tree
#               to locate all files that match $ARGV[0] unless $ARGV[0]
#               is a predefined option in which case the match field is
#               taken from $ARGV[1].
#
# CREATED:      01/02/2015  JLC
# MODIFIED:     
#

use strict;

my $dbg = 1;
my $mode = 0;
my $matchKey = "";

sub debugPrint;

if (length($ARGV[1]) == 0)
{
  # There is only one argument.
  if (lc($ARGV[0]) ne "-i")
  {
    # There is only one argument and it isn't case sensitive.
    $mode = 1;
    $matchKey = $ARGV[1];
  }
  else
  {
    # There is only one argument but it's "-i" or "-I".
    $mode = 0;
  }
}
else
{
  # There are two arguments.
  if (lc($ARGV[0]) ne "-i")
  {
    # There are two arguments but the first argument isn't "-i" or "-I".
    $mode = 0;
  }
  else
  {
    $mode = 2;
    $matchKey = $ARGV[1];
  }
}

if ($mode == 0)
{
  debugPrint "Error";
  exit 1;
}
else
{
  debugPrint $mode;
  debugPrint $ARGV[0];
  debugPrint $ARGV[1];
}

sub debugPrint
{
  if ($dbg)
  {
    print "Debug.Print:  $_[0]\n";
  }
}
