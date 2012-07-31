#!perl -X

use strict;
use warnings;

use Sys::Hostname;
use IO::Select;
use IO::Socket::INET;
use IO::Handle;
use Net::FTP;
use Data::Dumper;
$Data::Dumper::Terse = 1;
use MIME::Base64;
use URI::Escape;
use LWP::UserAgent;
use User::pwent;
use User::grent;
use POSIX qw(:sys_wait_h);
use Compress::Zlib;
use Cwd qw(abs_path);
use Getopt::Long qw(:config no_ignore_case);
use Digest::SHA qw(hmac_sha256);
# 오직 ActivePerl-5.8.8.822-sun4-solaris-2.6-cc-280952.tar.gz 일때만 사용
#use Digest::SHA::PurePerl qw(hmac_sha256);
use Term::ReadKey;

use Crypt::CBC;
use Crypt::Twofish_PP;
use Config::IniFiles;
use Term::ANSIColor qw(colored :constants);
use Net::Netmask;
use Net::GitHub;

STDOUT->autoflush(1);

my $github = Net::GitHub->new( login => 'sasin55', pass => 'dnflskfk123' );

my $user = $github->user->show('sasin55');
$github->user->update( bio => 'Just Another Perl Programmer' );
my @repos = $github->repos->list;
my $rep = $github->repos;

=ReposTory Create
my $rp = $rep->create({
    name => 'Hello-World',
    description => 'This is your first repo',
    homepage => 'https://github.com'
});
=cut

my $rp = $rep->get('fayland', 'perl-net-github');

print "aa";

