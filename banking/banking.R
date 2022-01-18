setwd("C:/Users/Infinity-OS/Desktop/Project/banking")
data=read.csv("bank-full_train.csv",stringsAsFactors = FALSE,header=T)
test=read.csv("bank-full_test.csv",stringsAsFactors = FALSE,header=T)
sum(is.na(data))
d2 <- data
d2$age <- as.numeric(d2$age)
d2$duration <- as.numeric(d2$duration)
d2$campaign <- as.numeric(d2$campaign)
d2$pdays <- as.numeric(d2$pdays)
d2$previous <- as.numeric(d2$previous)
sapply(d2,class)
set.seed(2262)
sample <- sample.int(n = nrow(d2), size = floor(.8*nrow(d2)), replace = F)
traindata <- data[sample, ]
testdata  <- data[-sample, ]
sapply(d2,class)
par(mfrow=c(2,2))
for(i in 1:length(data))
{barplot(prop.table(table(data[,i])) , 
         xlab=names(data[i]), ylab= "Frequency (%)" , col = rainbow(3))}
summary(data)
library(ggplot2)
library(caret) # Accuracy
library(e1071)
library(rpart)
library(rpart.plot)
library(rattle)
library(randomForest)
library(caTools)
library(descr)
bank.cart<-rpart(y ~ ., traindata , method = 'class')
par(mfrow=c(1,1))
fancyRpartPlot(bank.cart , digits=2 , palettes = c("Purples", "Oranges"))
cart_pred_2 <- predict( bank.cart , test , type = "class")
cart_prob_2 <- predict( bank.cart , test , type = "prob")

write.csv(cart_pred_2, "cart_pred_2.csv")
write.csv(cart_prob_2, "cart_prob_2.csv")
