
 ## Two Sample
  ## Girls >> bpys(Alternative Hypo) Girls <= Boys(Null Hypothesis)
  ## One sided Hypothesis
  boys = c(7,4,5,6,3,4,5,6,7,8)
  length(boys)
  girls = c(7,4,5,6,8,4,5,6,7,8)
  length(girls)
  
  
  mean(girls)
  
  mean(boys)
  
  ##if(mean(girls) - mean(boys))>0
  
  ##  mean - sd and mean + sd if this sample has 68% wherein the mean diff. is like mean(girls) > mean(boys)
  
  ##case 2: if mean(diif) == 2 and sd ==1 ???
  
  
  ################
  ##Null Hypothesis: girls == boys OR True Diff in mean is ==0
  ## Alter. is boys != boys
  
  t.test(girls,boys)
  
  ################
  ##Null Hypothesis: girls <= boys 
  ## Alter. is boys < girls
  
  
  t.test(girls,boys,alternative = "greater")
  
  ## use theoritical mean mu
  
  t.test(girls,mu = 14)
 
  
  t.test(girls,mu=7,alternative = "greater")
  
  
   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  