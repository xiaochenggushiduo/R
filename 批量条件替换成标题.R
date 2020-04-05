library(tidyverse)
data <- data.frame(A = c('%a%', NA, NA), B = c(NA, NA, '%a%'), stringsAsFactors = F)
data

tmp_end <- c()
for (i in names(data1)) {
  
  tmp_c <- ifelse(data1[[i]] == '%选项标题%', i, data1[[i]])
  tmp_end <- append(tmp_end, tmp_c)
  
}
rs_tmp_end <- 
  tmp_end %>%
  matrix(ncol = ncol(data1)) %>%
  as.data.frame() %>%
  `names<-` (names(data1))

rio::export(rs_tmp_end, "/Users/song/Desktop/data1.xlsx")
