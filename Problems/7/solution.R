#PE Problem 7
#What is the 10 001st prime number?

rm(list=ls())
cat('\014')

j=1
i=1

while(j<10001){
  i=i+2
  
  check.list = seq(2,ceiling(sqrt(i)))
  
  factor.check=c()
  for(k in check.list){
    factor.check = c(factor.check,i %% k)
  }
  
  if(all(factor.check!=0)==T){
    j=j+1
  }
}

print(i)