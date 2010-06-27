#!/usr/bin/perl
use strict;
use warnings;

use IO::File;
          my $fh = new IO::File "< /home/xyf/MyProject/UW/root/index.htm";
	print <$fh>;
	$fh->close;



