#Solving PE problem 9

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.


rm(list=ls())
cat('\014')

max = 500
candidates=c()
for(i in 1:max){
  for(j in 1:i){
    test = i^2 + j^2
    if(sqrt(test)%%1 == 0){
      if((i + j + sqrt(test))==12){
        next
      }
    }
  }
}

print(i,j,test)