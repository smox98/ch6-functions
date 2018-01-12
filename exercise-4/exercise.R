# Exercise 4: functions and conditionals

# Define a function `IsTwiceAsLong` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
IsTwiceAsLong <- function(first, second) {
  length.one <- nchar(first)
  length.two <- nchar(second)
  return((length.one / length.two >= 2) | (length.two / length.one >= 2))
}

# Call your `IsTwiceAsLong` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
one <- "he"
two <- "whatever"
three <- "he"
print(IsTwiceAsLong(one, two))
print(IsTwiceAsLong(two, one))
print(IsTwiceAsLong(one, three))


# Define a function `DescribeDifference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
DescribeDifference <- function(one, two) {
  one.length <- nchar(one)
  two.length <- nchar(two)
  if (one.length > two.length) {
    return(paste("Your first string is longer by", (one.length - two.length), "characters"))
  } else if (two.length > one.length) {
    return(paste("Your second string is longer by", (two.length - one.length), "characters"))
  } else {
    return("Your strings are the same length!")
  }
}

# Call your `DescribeDifference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
print(DescribeDifference(one, two))
print(DescribeDifference(two, one))
print(DescribeDifference(one, three))