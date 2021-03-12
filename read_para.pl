use strict;
use warnings;
use autodie;

my $text = <<TEXT;
This is a paragraph.

Here's another one that 
spans over multiple lines.

Last paragraph
TEXT

local $/ = "";
open my $fh, '<', \$text;

while ( <$fh> ) {
    print "Reading Paragraph #$.: $_";
}

close $fh;
