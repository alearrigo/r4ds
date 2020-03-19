library(tidyverse)

str(mpg)
head(mpg)

data <- mpg

str(data)

# displ -----> engine size, in litres
# drv -----> drive train (f= front-wheel drive, r = rear wheel drive, 4= 4wd)
# hwy -----> highway miles per gallon
# fl -----> fuel type
# class -----> "type" of car


apply(data, 2, unique)

data %>% nrow()

ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ,y=hwy))

ggplot(data=mpg)+
  geom_point(mapping = aes(x=class,y=drv))


#plottiamo per vedere a che categoria appartengono i punti
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = fl, color= drv, size = hwy))


ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy, color= displ<5))


ggplot(data = mpg) +
  geom_point(mapping = aes(x = drv, y = cyl))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~cyl, nrow = 1)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(.~ cyl)

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv))+
  geom_point(aes(x = displ, y = hwy, color = drv))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth()


ggplot(data = diamonds) +
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = medianfun.ymax = max,

  )


library(tidyverse)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

filter(mpg, cyl == 8)
filter(diamonds, carat > 3)
