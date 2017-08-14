#!/usr/bin/perl
my @files = split(/\n/,`ls $ENV{HOME}/repos/go-ontology/src/design_patterns/*{yaml,tsv}`);
print "defaultPatterns:\n";
foreach (grep {/\.yaml$/} @files) {
    s@.*/@@;
    print "  - url: https://raw.githubusercontent.com/geneontology/go-ontology/master/src/design_patterns/$_\n";
    print "    title: $_\n";
}
print "defaultXSVs:\n";
foreach (grep {/\.tsv$/} @files) {
    s@.*/@@;
    print "  - url: https://raw.githubusercontent.com/geneontology/go-ontology/master/src/design_patterns/$_\n";
    print "    title: $_\n";
}
