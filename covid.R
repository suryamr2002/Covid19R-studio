library(Hmisc)  #import  
data <- read.csv("/cloud/project/COVID19_line_list_data.csv")

describe(data)  # Hmisc command

# cleaned up death column
data$death_dummy <- as.integer(data$death != 0)

# death rate
sum(data$death_dummy) / nrow(data)

