install.packages("stringr")
library(stringr)
print(USArrests)
statenames<- rownames(USArrests)
statenames
#vowel vector
vowels=c("a","e","i","o","u")
#vector for storing results
num_vowels<- vector(mode = "integer", length = 5)
#calculate the number of vowels in each names
for(i in seq_along(vowels)){
  num_aux= str_count(tolower(statenames), vowels[i])
  num_vowels[i]=sum(num_aux)
}
#add vowel names
names(num_vowels) = vowels

#total number of vowels
num_vowels

#sort in decreasing order
sort(num_vowels, decreasing = T)


#Problem2

barplot(num_vowels, main = "Number of vowels in USA States names",
        border = NA, ylim = c(0, 80))
