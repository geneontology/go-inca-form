#!/usr/bin/perl
my @files = split(/\n/,`ls $ENV{HOME}/repos/go-ontology/src/design_patterns/*yaml`);
print "defaultPatterns:\n";
foreach (@files) {
    s@.*/@@;
    print "  - url: https://raw.githubusercontent.com/geneontology/go-ontology/master/src/design_patterns/$_\n";
    print "    title: $_\n";
}
print "defaultXSVs:\n";
