library('rvest')
library(xml2)
j<-1:5
for (i in j) {
  u<-paste("http://roll.finance.sina.com.cn/finance/zq1/gsjsy/index_",i,".shtml")
  url <- u
}

webpage<-read_html(url,encoding = 'gb2312')#在源码中搜索“charset”查找该网页编码方式
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
png(file="/Users/song/Desktop/大盘词云分析.png", bg="transparent")
dev.off()
