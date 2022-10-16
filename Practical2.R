# Doing exercises from practical sheets

#Q1

# Note: 26 letters in emglish alphabet

sample_size=6
p_1=prod(26:(26-sample_size+1))/(26^sample_size)

#Q2

p_2=choose(60, 10)/choose(100, 10)

#Q3

p_3=choose(5, 3)/choose(15, 3)

#Q4

total_scond=50
def_scond=10

#a)

p_3_a=choose(10, 1)/choose(50, 1) # same as 10/50 but still, gives perspective ;)

#b)

#in this case we can have 2 ways to go at the problem (good, bad) or (bad, bad)
#as we are only interested in the seccond one

good=choose(40, 1)/choose(50, 1)
bad=choose(10, 1)/choose(50, 1)

p_3_b=good*bad+bad*(choose(9, 1)/choose(50, 1))

#c)

p_3_c=(choose(10, 2)/choose(50, 2))

#d)

p_3_d=bad*bad


#Q5

k <- 5
p_5 <- 1 - prod(365:(365 - k + 1))/(365^k)


#Q6

#This just tryal and error but ive got k=32

#Q7

x <- sample(c('H', 'T'), 1000, replace=T)

p_7 <- table(x)/1000

#Q8

x <- sample(c(1:6), 600, replace=T)
x2 <- table(x)/600

p_8 <- x2[2] + x2[4] + x2[6]

#Q9

x <- sample(c('HH', 'HT', 'TT', 'TH'), 100, replace=T)
p_9 <- table(x)/100

#Q10

par(mar=c(1,1,1,1))

x <- sample(c(2, -2), 100, replace=T)
num_total <- 0
num_total[1] <- x[1]

for (i in 2:100) num_total[i] = num_total[i-1] + x[i]
plot(num_total)

num_total[num_total > 0]

length(num_total[num_total > 0]) / 100

# Winnings or losses (part b)
sum(x)

#Q11

k <- 20
p_11 <- 1 - prod(50:(50 - k + 1))/50^20

#DONE
