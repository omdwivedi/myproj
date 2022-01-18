ld_train=read.csv("housing_train.csv",stringsAsFactors = F)
round(tapply(ld_train,ld_train$Price,ld_train$SellerG,mean,na.rm=T)
unique(ld_train$SellerG)
library(dplyr)
tapply(ld_train,mean(ld_train$Price,ld_train$SellerG))
lapply(ld_train,mean(ld_train$Price,ld_train$SellerG))
apply(ld_train,ld_train$Price,ld_train$SellerG,mean)
ty=table(tapply(ld_train$SellerG,ld_train$Price,mean))
View(ty)
yy=table(aggregate(Price ~ unique(SellerG),ld_train,mean))

df=data.frame(ld_train$Price,ld_train$SellerG)
View(df,He)
data.frame(test_num = unique(df$TestNum), mean_value = sapply(split(df$Value, df$TestNum), mean))

atrame(cat = unique(ld_train$SellerG), Price_mean = sapply(split(ld_train$Price,ld_train$SellerG), mean))

kk=datrame(cat = unique(ld_train$SellerG), Price_mean = sapply(split(ld_train$Price,ld_train$SellerG), mean))
View(kk)
which(cat,kk$Price_mean==3320000)

kk=dataframe(cat = unique(ld_train$SellerG), Price_mean = sapply(split(ld_train$Price,ld_train$SellerG), mean))

kk=data.frame(cat = unique(ld_train$SellerG), Price_mean = sapply(split(ld_train$Price,ld_train$SellerG), mean))
summary(kk)
max(kk$cat)
which(kk$cat$Price_value == 3320000)
View(kk)
unique(ss)
kk[which(kk$Price_mean == 3320000),]
max(ss)
max(yy)
ki=data.frame(cat = unique(ld_train$CouncilArea), Price_mean = sapply(split(ld_train$Price,ld_train$CouncilArea), var))
summary(ki)
ki[which(ki$Price_mean == 1692174),]
ki[which(ki$Price_mean == 1692174),]
View(ki)
row.name(ki$Price_mean == 1692174)

kk=data.frame(cat = unique(ld_train$SellerG), Price_mean = sapply(split(ld_train$Price,ld_train$SellerG), var))         
ki=data.frame(cat = (d_train$CouncilArea), Price_mean = sapply(split(ld_train$Price,ld_train$CouncilArea), mean))
ki=data.frame(cat = unique(ld_train$CouncilArea), Price_mean = sapply(split(ld_train$Price,ld_train$CouncilArea), mean))
View(ki)
summary(ki)
ki[which(ki$Price_mean == 994218615783)]
View(ld_train)
row_number(kk$Price_mean == 3320000 )
max(ld_train$Price)
ld_train[which(ld_train$Price == 6500000),]
var(ld_train$Price)
max(var(ld_train$Price))
ki=data.frame(cat = unique(ld_train$CouncilArea), Price_mean = sapply(split(ld_train$Price,ld_train$CouncilArea), mean))