# This file is generated by Dist::Zilla::Plugin::CPANFile v6.017
# Do not edit this file directly. To change prereqs, edit the `dist.ini` file.

requires "Capture::Tiny" => "0";
requires "Class::Inspector" => "1.36";
requires "DDP" => "0";
requires "Data::Dumper" => "0";
requires "Data::Printer" => "0";
requires "File::Basename" => "0";
requires "FindBin" => "0";
requires "Getopt::Long::Descriptive" => "0";
requires "List::Util" => "0";
requires "Log::Dispatch" => "0";
requires "Module::Runtime" => "0";
requires "Moo" => "0";
requires "Moo::Role" => "0";
requires "MooX::StrictConstructor" => "0";
requires "PPI" => "1.270";
requires "PPIx::QuoteLike" => "0";
requires "PPIx::Utils::Classification" => "0";
requires "Path::Tiny" => "0";
requires "Perl::Tidy" => "20210111";
requires "Pod::Usage" => "0";
requires "Ref::Util" => "0";
requires "String::InterpolatedVariables" => "0";
requires "Sub::HandlesVia" => "0";
requires "Symbol::Get" => "0.10";
requires "Text::SimpleTable::AutoWidth" => "0";
requires "Try::Tiny" => "0";
requires "Types::Standard" => "0";
requires "lib" => "0";
requires "perl" => "5.008";
requires "strict" => "0";
requires "utf8" => "0";
requires "warnings" => "0";

on 'test' => sub {
  requires "Cpanel::JSON::XS" => "0";
  requires "Data::Printer" => "0";
  requires "ExtUtils::MakeMaker" => "0";
  requires "File::Spec" => "0";
  requires "Geo::IP" => "0";
  requires "Getopt::Long" => "2.40";
  requires "LWP::UserAgent" => "6.49";
  requires "Log::Dispatch::Array" => "0";
  requires "Sub::Exporter" => "0";
  requires "Test::Fatal" => "0";
  requires "Test::More" => "0";
  requires "Test::Most" => "0";
  requires "Test::Needs" => "0";
  requires "Test::RequiresInternet" => "0";
  requires "Test::Warnings" => "0";
  requires "perl" => "5.008";
};

on 'test' => sub {
  recommends "CPAN::Meta" => "2.120900";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
  requires "perl" => "5.008";
};

on 'develop' => sub {
  requires "Code::TidyAll" => "0.71";
  requires "Code::TidyAll::Plugin::SortLines::Naturally" => "0.000003";
  requires "Code::TidyAll::Plugin::Test::Vars" => "0.04";
  requires "Code::TidyAll::Plugin::UniqueLines" => "0.000003";
  requires "Parallel::ForkManager" => "1.19";
  requires "Perl::Critic" => "1.132";
  requires "Perl::Tidy" => "20180220";
  requires "Pod::Coverage::TrustPod" => "0";
  requires "Pod::Wordlist" => "0";
  requires "Test::CPAN::Changes" => "0.19";
  requires "Test::Code::TidyAll" => "0.50";
  requires "Test::EOL" => "0";
  requires "Test::Mojibake" => "0";
  requires "Test::More" => "0.96";
  requires "Test::Pod" => "1.41";
  requires "Test::Pod::Coverage" => "1.08";
  requires "Test::Portability::Files" => "0";
  requires "Test::Spelling" => "0.12";
  requires "Test::Vars" => "0.014";
  requires "Test::Version" => "1";
};

on 'develop' => sub {
  recommends "Dist::Zilla::PluginBundle::Git::VersionManager" => "0.007";
};
