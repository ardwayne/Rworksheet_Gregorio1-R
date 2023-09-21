ageVector <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 
               37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41, 
               51, 35, 24, 33, 41)
length(ageVector)

#2
reciprocalageVector <- 1 / ageVector
reciprocalageVector

#3
new_ageVector <- c(ageVector, 0, ageVector)
new_ageVector

#4
sortadageVector <- sort(ageVector)
sortadageVector

#5
min_ageVector <- min(ageVector)
min_ageVector
max_ageVector <- max(ageVector)
max_ageVector                     

#6                     
dataVector <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,
2.5, 2.3, 2.4, 2.7)
dataVector
length(dataVector)

#7
doubled_datavector <- c (dataVector * 2)
doubled_datavector


#8.1
seq1 <- seq(1, 100)
seq1

#8.2
seq2 <- seq(20, 60)
seq2

#8.3
mean_seq <- mean(seq2)
mean_seq

#8.4
sum_seq3 <- sum(seq(51, 91))
sum_seq3

#8.5
sequence_1_to_1000 <- seq(1, 1000)
sequence_1_to_1000


#9       
Filtered_numbers <- (1:100)[(1:100) %% 3 != 0 & (1:100) %% 5 != 0 & (1:100) %% 7 != 0]
Filtered_numbers
       
#10
reverse_sequence <- 100:1
reverse_sequence

#11
multiples_of_3_or_5 <- (1:24)[(1:24) %% 3 == 0 | (1:24) %% 5 == 0]
sum_of_multiples <- sum(multiples_of_3_or_5)

multiples_of_3_or_5
sum_of_multiples

#12
{x <- 0 + x + 5 }
print(x)


#13
scorevector <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
scorevector

#14
x_2 <- scorevector[2]
scorevector[2]
x_3 <- scorevector[3]
scorevector[3]       

#15
name <- "Ardwayne Gregorio"
age <- "20"
print(paste("My name is", name, "and I am", age, "years old."))
print(R.version.string)
