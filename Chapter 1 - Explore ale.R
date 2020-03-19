library(tidyverse)

str(mpg)
head(mpg)

data <- mpg

str(data)

#hwy -----> fuel efficiency
#displ -----> engine size


apply(data, 2, unique)


ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ,y=hwy))
