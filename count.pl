#!/usr/bin/perl

open(FILE,"word");
@line=<FILE>;
%word=();
foreach $wordlist (@line){
	chomp($wordlist)
}
foreach $wordcheck (@line){
	$word{$wordcheck}++;
}
foreach $key (sort keys %word){
	print "$key => $word{$key} \n";
}
