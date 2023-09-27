#vector
age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 
               37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41, 
               51, 35, 24, 33, 41)
length(ageVector)


#2 reciprocal
reciprocalageVector <- 1 / ageVector
reciprocalageVector

#3Assign also new_age <- c(age, 0, age)
new_ageVector <- c(ageVector, 0, ageVector)
new_ageVector

#4sort
sortadageVector <- sort(ageVector)
sortadageVector

#5minimunandmaximum
min_ageVector <- min(ageVector)
min_ageVector
max_ageVector <- max(ageVector)
max_ageVector                     

#6vector_data                  
dataVector <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,
2.5, 2.3, 2.4, 2.7)
dataVector
length(dataVector)

#A.) There are 12 data points

#7generate new vector
doubled_datavector <- c (dataVector * 2)
doubled_datavector

#What happen to the data?
#as a result the value of the original "data" vector are kept, 
#and a new vector called "doubled_data" is made with all values doubled


#8.1 integers from 1 to 100
seq1 <- seq(1, 100)
seq1

#8.2 numbers from 20 to 60
seq2 <- seq(20, 60)
seq2

#8.3 mean of numbers from 20 to 60
mean_seq <- mean(seq2)
mean_seq

#8.4 sum of numbers from 51 to 91
sum_seq3 <- sum(seq(51, 91))
sum_seq3

#8.5 from 1 to 1000
sequence_1_to_1000 <- seq(1, 1000)
sequence_1_to_1000

#a. how many data points from 8.1 to 8.4 
#There are 4 data points from 8.1 to 8.4

#c. For 8.5 find only maximum data points until 10.
max_until_10 <- max(sequence_1_to_1000[sequence_1_to_1000<=10])
max_until_10


#9       
Filtered_numbers <- c(1:100)[(1:100) %% 3 != 0 & (1:100) %% 5 != 0 & (1:100) %% 7 != 0]
Filtered_numbers
       
#10
reverse_sequence <- 100:1
reverse_sequence

#11
multiples_of_3_or_5 <- (1:24)[(1:24) %% 3 == 0 | (1:24) %% 5 == 0]
sum_of_multiples <- sum(multiples_of_3_or_5)

multiples_of_3_or_5
sum_of_multiples

#a.How many data points from 10 to 11?
#there are two data points from 10 to 11.

#12
{x <- 0 + x + 5 }

#describe the output
#has a syntax issue in R since the trailing + has no perand after it. as a result, it would generate an error notice and no useful output.



#13
scorevector <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
scorevector


x_2 <- scorevector[2]
scorevector[2]
x_3 <- scorevector[3]
scorevector[3]       

#14

vector <- c(1, 2, NA, 4, NA, 6, 7)
vector[is.na(vector)] <- 999
print(vector, na.print = "-999")
#15
name <- "Ardwayne Gregorio"
age <- "20"
print(paste("My name is", name, "and I am", age, "years old."))
print(R.version.string)
