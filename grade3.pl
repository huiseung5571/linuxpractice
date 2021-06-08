#!/usr/bin/perl

open(FILE,"grade");
@line=<FILE>;
@subject=split(/[ ]+/, @line[$0]);
chomp(@subject[4]);
print "@subject[0]\t@subject[1]\t@subject[2]\t@subject[3]\t@subject[4]\t총점\t평균\t\n";
$a = 0;
@scores = (0,0,0);
for ($i=1; $i<= $#line; $i++){
	$a+=1;
	@st=split(/[ ]+/, @line[$i]);
	chomp(@st[4]);
	$total=@st[2]+@st[3]+@st[4];
	$avg=$total/3;
	printf "@st[0]\t@st[1]\t@st[2]\t@st[3]\t@st[4]\t%.1f\t%.1f\t\n",$total,$avg;
	@scores[0]+=@st[2];
	@scores[1]+=@st[3];
	@scores[2]+=@st[4];
}
$kor=@scores[0]/$a;
$math=@scores[1]/$a;
$eng=@scores[2]/$a;
printf "(Avg)\t%.1f\t%.1f\t%.1f\t\n",$kor,$math,$eng;
