NR==1 {printf "%s\t%s\t%s\t%s\t%s\t총점\t평균\t\n",$1,$2,$3,$4,$5;}
NR>1{
        count++;
        score[0] += $3; score[1] += $4; score[2] += $5;
        total=($3 + $4 + $5);
        avg=($3 + $4 + $5)/3;
        printf "%d\t%s\t%d\t%d\t%d\t%d\t%.1f\t\n",$1,$2,$3,$4,$5,($3+$4 +$5),($3 + $4 + $5)/3;
}
END {if(count>0){
        score[0] /= count; score[1] /= count; score[2] /= count;
        printf "(Avg)\t%.1f\t%.1f\t%.1f\t\n",score[0],score[1],score[2];
        }
}
