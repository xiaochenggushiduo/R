library("xml2")
library('rvest')
library('dplyr')
library("stringr")
i<-1:25
book_order<-data.frame()
for (i in 1:25) {
  web<-read_html(str_c("http://bang.dangdang.com/books/bestsellers/01.00.00.00.00.00-recent7-0-0-1-",i),encoding="gbk")
  book_rank<-web%>%html_nodes('.list_num')%>%html_text()
  book<-data.frame(book_rank)
  book_order<-rbind(book_order,book)
}
w<-write.csv(book_order,file = "/Users/song/Desktop/图书排名.csv")
w


