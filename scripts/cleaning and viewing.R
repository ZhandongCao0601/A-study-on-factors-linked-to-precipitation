# Sample of the cleaning process of the data set. 
# Which is removing the NAs (missing data) from the dataset.
# The data was named "precipitation" and should you modife the name for your own
# use and convience

for (i in 2:length(precipitation)) {
  print('Variable')
  print(mean(precipitation[[i]], na.rm=TRUE))
  print(median(precipitation[[i]], na.rm=TRUE))
  print(sd(precipitation[[i]], na.rm=TRUE))
  print(max(precipitation[[i]], na.rm=TRUE) - min(precipitation[[i]], na.rm=TRUE))
  print(IQR(precipitation[[i]], na.rm=TRUE))
  print(skewness(precipitation[[i]], na.rm=TRUE))
  print(kurtosis(precipitation[[i]], na.rm=TRUE))
}


# Notice what this code does is cleaning and printing the data so the person who
# is conducting this study will have an idea of what the data visually looks like. 