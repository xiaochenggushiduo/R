library('rvest')
library(xml2)
#j<-1:5
#for (i in j) {
  u<-paste("http://stock.10jqka.com.cn/thsgd/")
  url <- u
#}
webpage<-read_html(url,encoding = 'gb2312')#在源码中搜索“charset”查找该网页编码方式
a_data_html<-html_nodes(webpage,'a')
a_data<-html_text(a_data_html)
head(a_data)
news<-write.csv(a_data,file=paste("/Users/song/Desktop/news.csv"))

#分词
library(jiebaR,jiebaRD)
library(wordcloud2)
text<-news$x
mixseg <- worker("mix") 
a<-segment(text, mixseg)
a<- table(a)
wordcloud2(a,shape = 'star')

