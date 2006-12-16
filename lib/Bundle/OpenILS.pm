package Bundle::OpenILS;

our $VERSION = '0.07';

1;
__END__

=head1 NAME

Bundle::OpenILS - install all OpenILS prereq modules available on CPAN

=head1 SYNOPSIS

  perl -MCPAN -e 'install Bundle::OpenILS'

  or ...

  cpan Bundle::OpenILS

=head1 CONTENTS

APR::Const
Class::DBI
CGI
DateTime
DateTime::Format::ISO8601
Digest::MD5
GD::Graph ( ::pie, :bars3d, ::lines3d)?
LWP::UserAgent
Net::Z3950 (requires yaz and Event.pm)
Spreadsheet::WriteExcel
Template
Template::Stash
Text::CSV_XS 
Time::HiRes
XML::LibXSLT
XML::LibXML
XML::SAX
UNIVERSAL::require

=head1 DESCRIPTION

This bundle defines all CPAN-available prereq perl modules 
in the Open-ILS component of the Open-ILS (http://open-ils.org) 
Integrated Library System (library as in librarian). 

Note that you MUST still follow the instructions on the
wiki, preferably derived from the Debian, Ubuntu or Gentoo docs, for
installing Perl dependencies, especially for the MARC::* related
modules and Javascript::Spidermonkey.  These bundles do not include
the MARC::* modules, as their maintainers have not released updated
versions, and it can not automate the installation of JS::SM without
a good bit of work, because E4X support is required in Evergreen.

Note that you must install the Bundle::OpenSRF separately.

Bundles have special meaning for the CPAN module. When you install the 
bundle module all modules mentioned in CONTENTS will be installed 
instead.

=head1 PREREQUISITES

Partial list:

Yaz Toolkit (http://indexdata.dk/yaz) - needed for Net::Z3950
GD Graphics Library (http://www.boutell.com/gd/) needed for GD::Graph
libxml2 - needed by XML::LibXML
libxslt - needed by XML::LibXSLT

Please see the documentation at:

http://open-ils.org/dokuwiki/doku.php?id=server_installation

for a more detailed list of prereqs.

=head1 AUTHOR

Joshua Ferraro E<lt>jmf@liblime.comE<gt>

=head1 SEE ALSO

This bundle is related to the Bundle::OpenSRF bundle. If you're 
installing one, you probably want both.

You can find general and developer Open-ILS mailing lists here: 
http://open-ils.org/listserv.html

The web site for Open-ILS is: http://open-ils.org

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006 LibLime
Joshua Ferraro E<lt>jmf@liblime.comE<gt>

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

=cut
