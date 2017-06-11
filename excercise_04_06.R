
############ factors################
data <- c('a','s','c')
factor_data <- factor(data)

print(factor_data)



res = c()
for(i in 1:ncol(df3))
    {
      res[i] = class(df3[,i])
      }
    
  

df4 <- data.frame(
  a = c(11,11,11,13,12),
  b = c(12:15,15),
  d = c('a','b','c','a','a')
)

### store the factor columns
test = function(x){
  uniquelIST = list()
  j = 1
  for(i in 1:ncol(x)){
    if("factor"==class(x[,i])){
    uniquelIST[[i]] = unique(x[,i])
    j = j +1;
    }
  }
  return(uniquelIST)
}

## Alternative: not to store via index

test1 = function(df4){
uniqueList = list();
for(i in 1:ncol(df4)){
   if(class(df4[,i]) == 'factor'){
     uniqueList[[colnames(df4)[i]]] = unique(df4[,i])
     
   }
 
}
return (uniqueList);
}



test1(df4)





test(df4)


#################### Apply: alternative to loop constructs ##############
## lApply : vectors
## sApply : list
vect1 = c(1,2,3,4)
sapply(vect1,FUN = function(x){3^(x)})

print(vect1)



sapply(vect1,FUN = fnApply)




fnApply = function(x){
  
  
  
}


################# Matrix#########################


mat2= matrix(c(1:15),nrow = 5)

apply(X=mat2, FUN = function(x){x*10},2) ### output is Transpose matrix





finaldata <- c()

first <- data.frame(c('test','case'))
sec <- data.frame(c('training','data'))

finaldata <- rbind(first,sec)

print(finaldata)

#######################





city <- c('denvor','ny','ca')
state <- c('FL','WA','NJ')
zipcode <- c(101,102,345)

address <- cbind(city,state,zipcode)

print(address)













#################### questions#####################
#1. Optimizaton problem

#Fitting an equation ---> Forecasting

#Searching for highest value --> optimization


#stock broker -- > forecast


#banker for loan takers --> classification


#chemist for behaviour after intake of new drugs --> Unsupervised


#hedge fund --> optimization




########### Titanic dataSet ##################
#data = read.csv("")
#predictive model for survivals


#factors: the variables making maths operation on which doesn't stand valid

#Discete:
  Categorical
      Nominal
      actor
      Ordinal  as Rank ie. Categorical but with level Associated
  counts
      Number of Siblings  
   
   



#gender from string "male"/"female" can be changed to 0/1(BINARY ) so can use for maths operations

      
      
      
data = read.csv("# csv location")

str(data)

data$pclass=as.factor(data$pclass)
data$parch =as.factor(data$parch)
data$sibsp=as.factor(data$sibsp)
survived =as.factor(data$survived) 

for(i in 1:ncol(data)){
    if(class(data[,i]) != 'factor'){
      print(colnames(data)[i])
      
    }
  
}


summary(data)

aggregate(data$survived,list(data$pclass),'mean') # higher the clas more the survival


data$age_new = ifelse(data$age > 15,'Adult','child')

aggregate(data$survived,list(data$age_new),'mean') # higher the clas more the survival


aggregate(data$survived,list(data$age_new,data$sex),'mean')

aggregate(data$survived,list(data$age_new,data$sex,data$pclass),'mean')


### try for Title and mothr analysis
x = as.character(data$name)
x[1]=# regular expression
#alternatively:
    strsplit(x[1], " ")[[1]][[2]] 


y = as.vector(sapply(x,function(x){strsplit(x[1], " ")[[1]][[2]]}))

unique(y)



######## freq counts
table(y)


data$title = y




aggregate(data$survived,list(data))



# NA's vs empty String

# NOT to use 'Other' in predictive analysis

# what all functions does summary method has



################################# Linear Discriminant Alaysis ################
############# To reduce the Dimensionality to Linear LAgebra ##################

library(MASS)
require(MASS)
names(iris)

dim(iris)


head(iris)



train  = sample(1:nrow(iris),nrow(iris)/2);

iris_train = iris[train,]

iris_test = iris[-train,]

fit=lda(Species~ Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,data=iris_test)


pred=predict(fit,iris_test)  ##################?????


table(pred_class,iris_test$Species)

mean(pred_class==iris_train$Species)


####################### LDA ends here ################################





############### Logistics Regression#############

data(mtcars)

vs wt disp












