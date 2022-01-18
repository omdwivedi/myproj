setwd("C:/Users/Infinity-OS/Desktop/Project/retail")
getwd()
s_train=read.csv("store_train.csv",stringsAsFactors = FALSE)
s_test=read.csv("store_test.csv",stringsAsFactors = FALSE)
View(train)
library(dplyr)
glimpse(s_train)
glimpse(s_test)
s_test$store=NA
s_train$data="train"
s_test$data="test"
s=rbind(s_train,s_test)
glimpse(s)
str(s)
table(s$country)
table(s$State)
s$store=as.factor(s$store)
glimpse(s)
CreateDummies=function(data,var,freq_cutoff=0){
  t=table(data[,var])
  t=t[t>freq_cutoff]
  t=sort(t)
  categories=names(t)[-1]
  for( cat in categories){
    name=paste(var,cat,sep="_")
    name=gsub(" ","",name)
    name=gsub("-","_",name)
    name=gsub("\\?","Q",name)
    name=gsub("<","LT_",name)
    name=gsub("\\+","",name)
    name=gsub("\\/","_",name)
    name=gsub(">","GT_",name)
    name=gsub("=","EQ_",name)
    name=gsub(",","",name)
    data[,name]=as.numeric(data[,var]==cat)
  }
  data[,var]=NULL
  return(data)
}
unique(s_train$state_alpha)
names(s)[sapply(s,function(x) is.character(x))]
length(unique(s$countyname))
length(unique(s$storecode))
length(unique(s$Areaname))
length(unique(s$countytownname))
length(unique(s$state_alpha))
length(unique(s$store_Type))
s=s %>% select(-countyname,-storecode,-Areaname,-countytownname)
cat_cols=c("state_alpha","store_Type")

for(cat in cat_cols){
  s=CreateDummies(s,cat,100) 
}
glimpse(s)

lapply(s,function(x) sum(is.na(x)))

for(col in names(s)){
  if(sum(is.na(s[,col]))>0 & !(col %in% c("data","store","population","country"))){
    s[is.na(s[,col]),col]=mean(s[s$data=='train',col],na.rm=T)
  }
}

lapply(s,function(x) sum(is.na(x)))
s_train=s %>% filter(data=="train") %>% select(-data)
s_test=s %>% filter(data=="test") %>% select(-data,-store)
set.seed(2)
s=sample(1:nrow(s_train),0.8*nrow(s_train))
s_train1=s_train[s,]
s_train2=s_train[-s,]
library(randomForest)


model_rf=randomForest(store~.-Id,data=s_train1,mtry=5,ntree=100)
model_rf
val.score=predict(model_rf,newdata=s_train2,type='response')
library(caret)

confusionMatrix(val.score,s_train2$store)

val.prob_score=predict(model_rf,newdata=s_train2,type='prob')

library(pROC)

auc_score=auc(roc(s_train2$store,val.prob_score[,1]))
auc_score


model_rf_final=randomForest(store~.-Id,data=s_train,mtry=5,ntree=100)

model_rf_final

test.score=predict(model_rf_final,newdata = s_test,type='prob')[,1]
library(caret)

auc_score=auc(roc(s_test$store,val,prob_score[,1]))

test.score
write.csv(test.score,"test.score.csv")
d=importance(model_rf_final)
d=as.data.frame(d)
d$VariableNames=rownames(d)
d %>% arrange(desc(MeanDecreaseGini))

varImpPlot(model_rf_final)
