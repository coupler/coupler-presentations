## extract
x <- read.csv('my-data.csv',
  as.is = TRUE)
y <- read.csv('their-data.csv',
  as.is = TRUE)

## transform
# split up name
name.split <- strsplit(x$name, " ")
x$firstname <- sapply(name.split,
  function(v) v[1])
x$lastname <- sapply(name.split,
  function(v) v[2])

# merge data
dataset <- merge(x, y,
  by = c("firstname", "lastname"))

# select fields
fields <- c("firstname", "lastname",
  "dob", "height", "weight")
dataset <- dataset[, fields]

# calculate age
now <- as.Date("2062-10-23")
dob.date <- as.Date(dataset$dob)
age.days <- as.numeric(
  difftime(now, dob.date))
dataset$age <- age.days %/% 365.25

## load
save(dataset, file="dataset.Rdata")
