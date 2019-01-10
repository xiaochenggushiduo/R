library(rvest)
library(xml2)
url<-"http://finance.sina.com.cn/roll/index.d.html?cid=56589&page=1%27"
webpage<-read_html(url,encoding = 'utf-8')#在源码中搜索“charset”查找该网页编码方式
a_data_html<-html_nodes(webpage,'.list_009 a')
a_data<-html_text(a_data_html);a_data
head(a_data)
news<-write.csv(a_data,file=paste("/Users/song/Desktop/news.csv")


#分词
library(jiebaR,jiebaRD)
library(wordcloud2)
text<-news$x
mixseg <- worker("mix") 
a<-segment(text, mixseg)
freq<- table(a)
wordcloud2(freq,shape = 'star')
 
