#Solving PE problem 1

#'Find the sum of all the multiples of 3 or 5 below 1000.'
a=0
for(i in 1:999){
  if(i %% 3 == 0 | i %% 5 == 0){
    a=a+i
  }
}
print(a)