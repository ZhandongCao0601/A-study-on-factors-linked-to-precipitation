# This is the part of study where the model and testing was conduted 
# The model conducted was a multi variable linear model and the summary of the model 
# is also conducted


# Regression model
model = lm(data = precipitation, Precipitation ~ mslp + brestzon + kefzon + sstatlan + sstengch)
summary(model)
# two sample t test
sample1 = precipitation$Precipitation[1:24]
sample2 = precipitation$Precipitation[25:50]
t.test(sample1, sample2, var.equal = FALSE)