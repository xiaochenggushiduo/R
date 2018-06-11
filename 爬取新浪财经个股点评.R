library('rvest')
library(xml2)
url <- 'http://finance.sina.com.cn/stock/'
webpage<-read_html(url,encoding = 'utf-8')#在源码中搜索“charset”查找该网页编码方式
a_data_html<-html_nodes(webpage,'p')
a_data<-html_text(a_data_html)
head(a_data)
write.csv(a_data,file="/Users/song/Desktop/股票新闻.csv")

#分词
library(jiebaR,jiebaRD)
library(wordcloud2)
text<-as.character(news)
mixseg <- worker() 
a<-segment(text, mixseg)
a<- table(a)
wordcloud2(a,shape = 'star')

