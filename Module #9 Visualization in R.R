install.packages("AER")
library(AER)
data("MurderRates", package = "AER")
head(MurderRates)

#1. Base R Graphics
#ScatterPlot
plot(MurderRates$convictions, MurderRates$executions,
     main = "Base: Convictions vs. Executions",
     xlab = "Convictions",
     ylab = "Executions")
#Histogram
hist(MurderRates$rate,
     main = "Base: Distribution of Murder Rates",
     xlab = "Murder Rate")

#2. Lattice Graphics
library(lattice)
#Conditional scatter plot (small multiples)
xyplot(rate ~ income | southern,
       data = MurderRates,
       main = "Lattice: Rate vs. Income by region")
#Box-and-whisker plot
bwplot(rate ~ southern,
       data = MurderRates,
       main = "Lattice: Rate by region")

#3. ggplot2
library(ggplot2)
#Scatter plot with smoothing
ggplot(MurderRates, aes(x = income, y = rate, color = southern)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: rate vs. income with trend by region")
#Faceted histogram
ggplot(MurderRates, aes(rate)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ southern) +
  labs(title = "ggplot2: rate distribution by region")