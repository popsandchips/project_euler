#Solving PE problem 2

#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

a=0
b=1
sum=0
while(sum<4000000){
  c=a+b
  a=b
  b=c
  if(b %% 2 ==0){
    sum=sum+b
  }
}
print(sum)