library(sf)
library(dplyr)

xx <- st_polygon(list(rbind(c(0,0), c(10,0), c(10,10), c(0,10), c(0,0)))) %>%
  st_sfc %>%
  st_sf
  
 yy <- st_sfc(
  st_polygon(list(rbind(c(0,0), c(2,0), c(2,2), c(0,2), c(0,0)))),
  st_polygon(list(rbind(c(1,1), c(2,1), c(2,2), c(1,2), c(1,1)))),
  st_polygon(list(rbind(c(10,0), c(10,10), c(20,10), c(20,0), c(10,0)))),
  st_polygon(list(rbind(c(11,0), c(11,1), c(12,1), c(12,0), c(11,0))))
) %>%
  st_sf

plot(rbind(xx, yy))

st_contains_properly(xx, yy, sparse = FALSE)

st_contains_properly(yy, xx, sparse = FALSE)

st_intersects(xx, yy, sparse = FALSE)

st_intersects(yy, xx, sparse = FALSE)
