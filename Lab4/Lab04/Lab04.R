#creating a vector
x <- c(1:50)
#using the plot() function
plot(x, sin(x))
#editing from dot plot to smooth-line curve
plot(x, sin(x), type = "l")
#changing the color and width of the line graph
plot(x, sin(x), type = "l", col = "BLUE", lwd = 3)
#using the seq() function to decrease step size and create a smoother graph
x = seq(from = 1, to = 50, by = 0.1)
plot(x, sin(x), type = "l", col = "BLUE", lwd = 3)
