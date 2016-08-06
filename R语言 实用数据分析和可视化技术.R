> a<-b<-7
> a
[1] 7
> b
[1] 7
> assign("j",4)
> j
[1] 4
> rm(j)   # 删除变量
> j
Error: object 'j' not found
> class(a)  # 查看变量中存储的数据类型
[1] "numeric"
> is.numeric(b)  # 检验一个变量是否是数值型
[1] TRUE
> i<-5L
> i
[1] 5
> is.integer(i)
[1] TRUE
> x<-"data"
> x
[1] "data"
> y<-factor("data")
> y
[1] data
Levels: data
> nchar(x)   # 得到字符的长度
[1] 4
> nchar(y)
Error in nchar(y) : 'nchar()' requires a character vector
