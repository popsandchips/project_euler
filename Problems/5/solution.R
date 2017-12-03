#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

rm(list=ls())
cat('\014')

all.divisible.flag=F
check.integers = c(3,6,7,8,9,11,12,13,14,15,16,17,18,19,20)

h=0
while(all.divisible.flag==F){
  h=h+1
  i=h*20
  
 
    print(i)
  
  
  divisable=c()
  k=0
  for(j in check.integers){
    k=k+1
    divisable[k]=i %% j
  }
  
  if(all(divisable==0)){
    all.divisible.flag=T
  }
}