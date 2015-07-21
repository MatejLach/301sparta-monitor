use strict;

open OUT, ">edid.bin";
binmode OUT, ':raw';

my $cnt = 0;
while (<DATA>) {
my @line = split ' ';
my $dat;
foreach $dat (@line) {
print "Octet $dat\n";
print OUT chr(hex $dat) if $dat;
$cnt++ if $dat;
}
}
close OUT;
print "Output $cnt octets.\n";

##EDID block for Yamakasi 301 Sparta
__DATA__
00 ff ff ff ff ff ff 00 2d 54 20 92 f0 00 00 02
14 17 01 03 80 40 28 78 28 60 e5 a3 57 4b 9c 25
11 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
01 01 01 01 01 01 b0 68 00 a0 a0 40 2e 60 30 20
36 00 81 91 21 00 00 1a bc 1b 00 a0 50 20 17 30
30 20 36 00 81 91 21 00 00 1a 00 00 00 fc 00 44
56 49 20 20 20 20 20 20 20 20 20 20 00 00 00 fd
00 3b 3d 1e 64 11 00 00 00 00 00 00 00 00 01 f8
00 ff ff ff ff ff ff 00 2d 54 20 92 f0 00 00 02
14 17 01 03 80 40 28 78 28 60 e5 a3 57 4b 9c 25
11 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
01 01 01 01 01 01 b0 68 00 a0 a0 40 2e 60 30 20
36 00 81 91 21 00 00 1a bc 1b 00 a0 50 20 17 30
30 20 36 00 81 91 21 00 00 1a 00 00 00 fc 00 44
56 49 20 20 20 20 20 20 20 20 20 20 00 00 00 fd
00 3b 3d 1e 64 11 00 00 00 00 00 00 00 00 01 f8
