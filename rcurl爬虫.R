
library(RCurl)
library(XML)

myHttpheader <- c(
  "User-Agent"="Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.1.6) ",
  "Accept"="text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
  "Accept-Language"="en-us",
  "Connection"="keep-alive",
  "Accept-Charset"="GB2312,utf-8;q=0.7,*;q=0.7")

for (i in 5:8) {
  urls <- paste('https://www.anjuke.com/xinfang/fj-cc/201',i,'/')
  webpage <- getURL(urls,httpheader=myHttpheader,.encoding="utf-8")
  pagetree <- htmlTreeParse(webpage,encoding="UTF-8", error=function(...){}, useInternalNodes = TRUE,trim=TRUE)
  time <- getNodeSet(pagetree, "//*[(@id = "formerYear")]//td[(((count(preceding-sibling::*) + 1) = 1) and parent::*)]")
  price <-getNodeSet(pagetree, "#formerYear td:nth-child(2)")
  info<-data.frame(time,price)
  info
}

