#install.packages('arules')
library(arules)

#importing dataset
dataset<-read.csv('/Users/DK/Documents/Machine_Learning/Python-and-R/Machine_Learning_Projects/Association Rule Learning/apriori/Market_Basket_Optimisation.csv')
dataset<-read.transactions("/Users/DK/Documents/Machine_Learning/Python-and-R/Machine_Learning_Projects/Association Rule Learning/apriori/Market_Basket_Optimisation.csv",sep=',',rm.duplicates=TRUE)
summary(dataset)
itemFrequencyPlot(dataset, topN = 10)

# Training Apriori on the dataset
rules = apriori(data = dataset, parameter = list(support = 0.004, confidence=0.2))

# Visualising the results
inspect(sort(rules, by = 'lift')[1:10])