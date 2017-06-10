#Solving PE problem 3

#What is the largest prime factor of the number 600851475143 ?
library(numbers)

p = 600851475143

max.prime = max(primeFactors(p))

print(max.prime)