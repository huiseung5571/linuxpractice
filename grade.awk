NR==1 {printf "%s\t%s\t%s\t%s\t%s\t총점\t평균\t\n",$1,$2,$3,$4,$5;}
NR>1{
	count++;
	korean += $3; math += $4; english += $5;
	total=($3 + $4 + $5);
	avg=($3 + $4 + $5)/3;
	printf "%d\t%s\t%d\t%d\t%d\t%d\t%.1f\t\n",$1,$2,$3,$4,$5,total,avg;
}
END {if(count>0){
	korean /= count; math /= count; english /= count;
	printf "(Avg)\t%.1f\t%.1f\t%.1f\t\n",korean,math,english;
	}
}
