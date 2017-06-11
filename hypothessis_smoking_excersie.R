## Need to load test data for smoking 
table(test$sex,test$smoke)

chisq.test(table(test$sex,test$smoke))

if p-value > 0.05 than alternate Hypothesis is rejected


 
 