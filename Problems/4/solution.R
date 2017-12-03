#Solving PE problem 4

#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.


rm(list=ls())
cat('\014')


library(numbers)

num_seq = c(10000:998001)
start=Sys.time()
palindromes = c()
for(i in num_seq){
  i=as.character(i)
  
  if(nchar(i) %% 2 == 0){
    a = substr(i,1,3)
    b = substr(i,4,6)
  }else{
    a = substr(i,1,2)
    b = substr(i,5,6)
  }
  
  b=sapply(lapply(strsplit(b,NULL),rev),paste,collapse='')

  if(a==b){
    palindromes=c(palindromes,i)
  }
}

palindromes = as.numeric(palindromes)

pal.list=c()
j=0
for(p in palindromes){
  j=j+1
  factors=c()
  for(i in 100:999){
    for(h in 100:999){
      if(i*h==p){
        factors=c(p,i,h)
      }
    }
  }
  if(length(factors>0)){
    pal.list=c(pal.list,p)
  }
}
end=Sys.time()
print(max(pal.list))
print(paste('Started:',start,'End:',end,sep=''))