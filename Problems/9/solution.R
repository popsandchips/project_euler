#Solving PE problem 9

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.


rm(list=ls())
cat('\014')
print(paste('start:',Sys.time()))
max = 500
candidates=c()
for(i in 1:max){
  for(j in 1:i){
    test = i^2 + j^2
    if(sqrt(test)%%1 == 0){
      even_sum=(i + j + sqrt(test))
        if(even_sum==1000){
          print(paste('digits:',i,j,sqrt(test)))
          print(i*j*sqrt(test))
        }
      }
    }
  }
print(paste('end:',Sys.time()))

