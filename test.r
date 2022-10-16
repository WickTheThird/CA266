# Introduction to R

# Assigning variables

x <- 7 # or 7 -> x, but we prefer the first way
print(7)

# We can assign a range of variables

x <- 1:4 # We can multiply this range by a number
b <- x*10

# We can get fast help in R by typing
# either help.start() (this opening the entire docs)
# or ?(name_of_function) or in case you vaguely know
# the name of the function you can write apropos("vague_name")
# then a list of possible names will apear and if you forgot what it
# does then just simply use "?"

apropos("att")

?attach()

# Making vectors 
# c denotes a one dim vector/matrix
downtime <- c(0, 1, 2, 12, 12, 16, 18, 21, 21, 23, 25, 28, 29, 33, 36, 65, 47, 51)

mean(downtime)
median(downtime)
range(downtime)
sd(downtime)
summary(downtime)
boxplot(downtime)
hist(downtime, breaks=5)

# Reading from a file...

results <- read.table("~/Documents/GitHub/CA266/results.txt", header=T)

colnames(results)
nrow(results)

results$arch1[10]

mean(results$arch1, na.rm=T)
median(results$arch2, na.rm=T)
range(results$prog1, na.rm=T)
sd(results$prog2, na.rm=T)
summary(results)

attach(results)

par (mfrow = c(2, 2))

boxplot(results$arch1, results$arch2, results$prog1, results$prog2)
boxplot(arch1~gender, xlab="gender", ylab="marks", main="Architecture 1 Results")

bins <- c(0, 20, 40, 60, 80, 100)
students <- c(0, 34)
hist(prog1, xlab="Marks %", ylab="No. of Studets", breaks=bins, main="Programming Semester 1", ylim=students)

stem(results$arch1, scale=2)

plot(arch1)
plot(prog1, prog2)

pairs(results[2:5])


