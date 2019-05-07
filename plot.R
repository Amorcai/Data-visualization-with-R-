
#分面

library(ggplot2)
library(grid)
require(ggplot2)
require(grid)

# 动静分开的图
pathway=read.csv("/Users/pingguo/Desktop/R-/xyapart0918.csv",header=TRUE,row.names=1,check.names = FALSE) 
pbubble = p+ geom_point(aes(color=-1*log10(y7)))
pr = pbubble+scale_color_gradient(low="pink",high = "blue")
a<- ggplot(pathway, aes(width1,height1,size =Fre))
a + facet_grid(Po ~ .)+
  # 散点图函数：alpha设置散点透明度
  geom_point(alpha=0.5,color= "blue") +
  # 使散点的面积正比与变量值
  scale_size_area() +
  # 标尺函数：palette设置配色方案
  scale_colour_brewer(palette = "Set1")+labs(size="frequency",  x="horiztonal position",y="vertical position")+scale_x_continuous(limits = c(0,16)) +scale_y_continuous(limits = c(0,9))
a
#静态七个图
pathway=read.csv("/Users/pingguo/Desktop/R-/stillresullto0918.csv",header=TRUE,row.names=1,check.names = FALSE) 

pbubble = p+ geom_point(aes(color=-1*log10(y7)))
pr = pbubble+scale_color_gradient(low="pink",high = "blue")
a<- ggplot(pathway, aes(x1,y1,size =frequency*2),cex.lab=3)
a + facet_grid(. ~ P)+
  # 散点图函数：alpha设置散点透明度
  geom_point(alpha=0.5,color= "blue") +
  # 使散点的面积正比与变量值
  scale_size_area() +
  # 标尺函数：palette设置配色方案
  scale_colour_brewer(palette = "Set1")+labs(size="frequency",  x="horiztonal position",y="vertical position")+scale_x_continuous(limits = c(0,16)) +scale_y_continuous(limits = c(0,9))



