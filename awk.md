# cat test.txt 
1 Sam History 80 B 0.345
2 Joel Biology 70 C 0.583
3 Ellie Physics 85 B+ 0.438
4 Tommy History 90 A 0.632
5 Marlene Maths 80 B 0.832
6 Tess Chemistry 80 B 0.464

- awk '{print $1,$2,$3}' test.txt
1 Sam History
2 Joel Biology
3 Ellie Physics
4 Tommy History
5 Marlene Maths
6 Tess Chemistry

- awk '/History/ {print $2}' test.txt
Sam
Tommy

- awk '$3 ~/is/ {print $2}' test.txt
Sam
Tommy
Tess

-  awk '$3 !~/is/ {print $2}' test.txt
Joel
Ellie
Marlene

- awk '$4>70 {print $2}' test.txt
Sam
Ellie
Tommy
Marlene
Tess