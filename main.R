box::use(
  ./R
)

options(scipen = 999)

d01_dat <- readLines("Data/d01.txt", warn = FALSE)

R$d01$day_01_p1(d01_dat)

R$d01$day_01_p2(d01_dat)

d02_dat <- readLines("Data/d02.txt", warn = FALSE)

R$d02$day_02_p1(d02_dat)

R$d02$day_02_p2(d02_dat)

d03_dat <- readLines("Data/d03.txt", warn = FALSE)

R$d03$day_03_p1(d03_dat)

R$d03$day_03_p2(d03_dat)

d04_dat <- readLines("Data/d04.txt", warn = FALSE)

R$d04$day_04(d04_dat, 5)

R$d04$day_04(d04_dat, 6)

d05_dat <- readLines("Data/d05.txt", warn = FALSE)
