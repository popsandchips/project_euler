#Solving PE problem 6

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

rm(list=ls())
cat('\014')

sum_sqrs = 0

j=0
for(i in 1:100){
  j=j+i^2
}

sum_hndrd = sum(1:100)^2

diff = sum_hndrd - j

print(diff)