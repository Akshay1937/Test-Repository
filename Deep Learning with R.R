install.packages("drat")

# Install MXNet

install.packages("https://github.com/jeremiedb/mxnet_winbin/raw/master/mxnet.zip", repos = NULL)
library(mxnet) 

# Install H2O

install.packages("h2o")
library(h2o) 

install.packages('devtools')
install.packages('Rtools')
install.packages("reticulate")
devtools::install_github("rstudio/keras") 

writeLines('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron")
Sys.which("make")
install.packages("jsonlite", type = "source")
library(keras)
devtools::install_tensorflow()


install.packages("XML")
install.packages("RCurl")
install.packages("curl")

library(XML)
library(RCurl)
library(curl)

url = "https://en.wikipedia.org/wiki/2016_Summer_Olympics_medal_table"
urldata = getURL(url)
urldata = curl(url)
con = readLines(urldata)


data = readHTMLTable(con, stringsAsFactors = FALSE)

x = data$`2016 Summer Olympics medal table`

View(x)



# Cedit Card data
install.packages("dslabs")
library(dslabs)

head(heights)

install.packages('caret')
library(caret)

set.seed(2)

y = heights$sex
x = heights$height
test_index = createDataPartition(y, times = 1, p = 0.5, list = FALSE)

train = heights[-test_index,]
test = heights[test_index,]

