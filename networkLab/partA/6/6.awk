BEGIN{
#include<stdio.h>
pkt =0;
time =0;
}
{
if($1=="r" && $3 =="6" && $4=="5"){
pkt+=$6;
time=$2;
}
}
END{
printf("Throughput = %f mbps\n",(pkt/time)*(8/1000000));
}
