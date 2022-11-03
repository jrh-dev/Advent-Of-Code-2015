box::use(R/d01)

d01_dat <- readLines("Data/d01.txt", warn = FALSE)

d01$day_01_p1(d01_dat)

d01$day_01_p2(d01_dat)

box::use(R/d02)

d02_dat <- readLines("Data/d02.txt", warn = FALSE)

d02$day_02_p1(d02_dat)

d02$day_02_p2(d02_dat)
