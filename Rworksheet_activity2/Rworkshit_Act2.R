#1 Create a vector using : operator
# a. Sequence from -5 to 5. Write the R code and its output.
# Describe its output.

Vector <- -5:5
Vector

#It produces numbers ranging from -5 to 5.


#b. x <- 1:7. What will be the value of x?

x <- 1:7
x

# The value of x will be 1 2 3 4 5 6 7

#2 Create a vector using seq() function

vector <- seq(1, 3, by = 0.2)
vector
# Write the R script and its output. Describe the output.
#The output is 1.0, 1.2, 1.4, 1.6, 2.0, 2.2, 2.4, 2.6, 2.8, and 3.0, with a 0.2 step size between each number.

#3 
Factory_Workers <- c (34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
                      22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
                      24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
                      18.)
Factory_Workers

Factory_Workers[(3)]
Factory_Workers [c(2,4)]

#3 a. Access 3rd element, what is the value?
# 22

# b. Access 2nd and 4th element, what are the values?
# 28 and 36

# c. Access all but the 4th and 12th element is not included. Write the R script and its output.
Factory_Workers [c(1:3,5:11,13:50)]
# Output 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18

#4

#The output shows that results just printed the word first and third

x <- x[c("first", "third")]
x

#The result output only displays the words first and third.

#b
x <- c("first" = 3, "second" = 0, "third" = 9)
x

#5 Create a sequence x from -3:2.
x <- -3:2
x

#a. Modify 2nd element and change it to 0;
x[2] <- 0
x

#Describe the output.
#The output shows that the second number changes and turn to 0

#b.Write the code and its output.
x <- -3:2
x

x[2] <- 0
x
# output  -3  0 -1  0  1  2

#6 *The following data shows the diesel fuel purchased by Mr. Cruz.
# Month Jan Feb March Apr May June
# Price per liter (PhP) 52.50 57.25 60.00 65.00 74.25 54.00
# Purchase–quantity(Liters) 25 30 40 50 10 45

#a.Create a data frame for month, price per liter (php)and purchase-quantity (liter). Write the R scripts and its output.
Purchases <- data.frame(
  Month = c("Jan", "Feb", "March", "Apr", "May", "June"),
  Price_per_liter_Php = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  Purchase_quantity_Liters = c(25, 30, 40, 50, 10, 45)
)

Purchases
View(Purchases)

#b.What is the average fuel expenditure of Mr. Cruz from
#Jan to June? Note: Use ‘weighted.mean(liter, purchase)‘.
# Write the R scripts and its output.
average_expenditure <-weighted.mean(Purchases$Priceperliter , Purchases$Purchasequantity)
average_expenditure

#Output 59.2625

#7

data <- c(
  length(rivers),
  sum(rivers),
  mean(rivers),
  median(rivers),
  var(rivers),
  sd(rivers),
  min(rivers),
  max(rivers)
)

data

#b The results shows the built in datasets of rivers in north america and shows that length,sum,mean,median,var,sd,min,max of rivers
#output 141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000   3710.0000

8# Create vectors with updated variable names

celebrities <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")

power <- c(1, 2, 3, 4, 5, 6, 7 ,8 , 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)

pay_amount <- c(67, 90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31)

celeb_data <- data.frame(Celebrity = celebrities, Power_Ranking = power_rankings, Pay_Amount = pay_amounts)

View(celeb_data)

#b
celeb_data$Power_Ranking[celeb_data$Celebrity == "J.K Rowling"] <- 15
celeb_data$Pay_Amount[celeb_data$Celebrity == "J.K Rowling"] <- 90
celeb_data

View(celeb_data)

#c
write.csv(celeb_data, "/cloud/project/PowerRanking.csv")
PowerRanking <- read.csv("PowerRanking.csv")
PowerRanking

#d
subset_data <- celeb_data[10:20, ]
save(subset_data, file = "Ranks.RData")

#Output   Celebrity Power_Ranking Pay_Amount
#10         Dan Brown            10         88
#11 Bruce Springsteen            11         55
#12      Donald Trump            12         44
#13      Muhammad Ali            13         55
#14    Paul McCartney            14         40
#15      George Lucas  J.K. Rowling         90
#16        Elton John            16         34
#17   David Letterman            17         40
#18    Phil Mickelson            18         47
#19       J.K Rowling            15         90
#20        Bradd Pitt            20         25

#e From the original data frame, rows 10 to 20 are chosen, saved as Ranks.RData, and then printed as the output by this script.

#9.a
if (!requireNamespace("readxl", quietly = TRUE)) {
  install.packages("readxl")
}
library(readxl)
file_url <- "https://tinyurl.com/Hotels-Vienna"
file_path <- "Hotels-Vienna.xlsx"
download.file(file_url, destfile = file_path, mode = "wb")
hotel_data <- read_excel(file_path)
str(hotel_data)

#b

dataset_dimensions <- dim(hotel_data)
data

#9.c
selected_columns <- hotel_data[, c("country", "neighbourhood", "price", "stars", "accomodation_type", "ratings")]
selected_columns

#9.d
new_rdata_file <- "new.RData"
save(selected_columns, file = new_rdata_file)
cat("Selected columns saved as", new_rdata_file, "\n")

#9.e
load("new.RData")

("First six rows:")
(head(selected_columns))


("Last six rows:")
(tail(selected_columns))

#10
# Create a list of vegetables
vegetables <- c("Carrots", "Broccoli", "Spinach", "Lettuce", "Tomatoes", "Cucumbers", "Onions", "Zucchini", "Eggplant", "Potato")
vegetables

#output "Carrots"   "Broccoli"  "Spinach"   "Lettuce"   "Tomatoes"  "Cucumbers"  "Onions"    "Zucchini"  "Eggplant"  "Potato"   

#b
vegetables <- c(vegetables, "Green Peas", "Garlic")
vegetables

#c
additional_vegetables <- c("Cabbage", "Bell Peppers", "Mushrooms", "Asparagus")
vegetables <- c(vegetables[1:5], additional_vegetables, vegetables[6:length(vegetables)])+
  #How manydatapoints does your vegetable list have?
  #16
  
  vegetables
#It added vegetables in between 5 and 6

#d
indices_to_remove <- c(5, 10, 15)
vegetables <- vegetables[-indices_to_remove]
vegetables 

#How many vegetables were left?

#13




