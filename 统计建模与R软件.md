* 随机试验的所有可能结果组成的集合为样本空间(sample space)，试验的每一个可能结果成为样本点(sample point)
* 对立事件一定是互斥事件，但互斥事件不一定是对立事件
* 古典概型(classical probability model)、几何概型(geometric probability model)、条件概率(conditional probability)
* 乘法公式(multiplication formula)、全概率公式(formula of total probability)、贝叶斯公式(Bayes formula)
* 伯努利试验(Bernoulli trial): 二项分布
 

<img src="https://github.com/stella-gao/Predictive-Analytics/blob/master/screenshot/1.png" width="500">


<img src="https://github.com/stella-gao/Predictive-Analytics/blob/master/screenshot/2.png" width="300">


* 常见的离散型分布：
  1. 两点分布（0-1分布）
  2. 伯努利试验 （二项分布）
  3. Poisson分布


<img src="https://github.com/stella-gao/Predictive-Analytics/blob/master/screenshot/3.png" width="500">


<img src="https://github.com/stella-gao/Predictive-Analytics/blob/master/screenshot/4.png" width="500">


* 常见的连续型分布
  1. 均匀分布
  2. 指数分布
  3. 正态分布 0.683, 0.954, 0.997


<img src="https://github.com/stella-gao/Predictive-Analytics/blob/master/screenshot/5.png" width="500">


<img src="https://github.com/stella-gao/Predictive-Analytics/blob/master/screenshot/6.png" width="500">


<img src="https://github.com/stella-gao/Predictive-Analytics/blob/master/screenshot/7.png" width="500">


<img src="https://github.com/stella-gao/Predictive-Analytics/blob/master/screenshot/8.png" width="500">


<img src="https://github.com/stella-gao/Predictive-Analytics/blob/master/screenshot/9.png" width="500">


* 常见二维随机向量的分布
  1. 二维均匀分布
  2. 二维正态分布

* 偏度系数 (coefficient of skewness): 刻画分布函数的对称性; 峰度系数(kurtosis): 刻画不同类型的分布的集中和分散程度
* 矩，协方差矩阵，相关矩阵
* 大数定律
  1. Bernoulli 大数定律
  2. Chebychev 大数定律
  3. Khintchin 大数定律
* 中心极限定理：判断随机变量序列部分和的分布是否渐近于正态分布的一类定理
  1. 独立同分布的中心极限定理
  2. 棣莫佛-拉普拉斯 De Moivre – Laplace 中心极限定理
* 联合概率分布函数
* 常用分布和分位数
  1. chi-square distribution 
  2. t distribution
  3. F distribution
* R 语言基础
```R
   > X1 <- c(35, 40, 40, 42, 37, 45, 43, 37, 44, 42, 41, 39)
   > mean(X1)
   [1] 40.41667
   > sd(X1) # 标准差
   [1] 3.028901
   > X1<-c(35, 40, 40, 42, 37, 45, 43, 37, 44, 42, 41, 39)
   > X2 <- c(60, 74, 64, 71, 72, 68, 78, 66, 70, 65, 73, 75)
   > plot(X1, X2)
   > hist(X1) # 直方图
```

```R
   rt<-read.table("exam0203.txt", head=TRUE); rt
   lm.sol<-lm(Weight~Height, data=rt) # 线性回归
   summary(lm.sol)
```
```R
   rm(list=ls(all=TRUE)) # 删除所有目标对象
   search() # 列出查找路径
```
```R
   > x <- c(10, 6, 4, 7, 8)
   > min(x)
   [1] 4
   > which.min(x) # 在第几个分类取得最小值
   [1] 3
   > sum(x)
   [1] 35
   > prod(x) # 乘积
   [1] 13440
   > length(x)
   [1] 5
   > median(x)
   [1] 7
   > mean(x)
   [1] 7
   > var(x)
   [1] 5
   > sd(x)
   [1] 2.236068
   > sort(x)
   [1]  4  6  7  8 10
   > order(x)
   [1] 3 2 4 5 1
   > sort.list(x)
   [1] 3 2 4 5 1
```
等差数列 a:b 表示从a开始，逐项加1或减1，直到b为止；等差运算优于乘法运算
```R
   > x <- 2*1:15
   > x
   [1]  2  4  6  8 10 12 14 16 18 20 22 24 26 28 30
   > n<-5
   > 1:n-1
   [1] 0 1 2 3 4
   > 1:(n-1)
   [1] 1 2 3 4
```
等间隔函数 seq(from=value1, to= value2, by=value3) 或者 seq(length=value2, from=value1, by=value3), 间隔默认为1
```R
   > seq(-5, 5, by=.2) -> s1
   > s1
    [1] -5.0 -4.8 -4.6 -4.4 -4.2 -4.0 -3.8 -3.6 -3.4 -3.2 -3.0 -2.8 -2.6 -2.4 -2.2 -2.0
   [17] -1.8 -1.6 -1.4 -1.2 -1.0 -0.8 -0.6 -0.4 -0.2  0.0  0.2  0.4  0.6  0.8  1.0  1.2
   [33]  1.4  1.6  1.8  2.0  2.2  2.4  2.6  2.8  3.0  3.2  3.4  3.6  3.8  4.0  4.2  4.4
   [49]  4.6  4.8  5.0
   > seq(2,10)
   [1]  2  3  4  5  6  7  8  9 10
   > s2 <- seq(length=51, from=-5, by=.2)
   > s2
    [1] -5.0 -4.8 -4.6 -4.4 -4.2 -4.0 -3.8 -3.6 -3.4 -3.2 -3.0 -2.8 -2.6 -2.4 -2.2 -2.0
   [17] -1.8 -1.6 -1.4 -1.2 -1.0 -0.8 -0.6 -0.4 -0.2  0.0  0.2  0.4  0.6  0.8  1.0  1.2
   [33]  1.4  1.6  1.8  2.0  2.2  2.4  2.6  2.8  3.0  3.2  3.4  3.6  3.8  4.0  4.2  4.4
   [49]  4.6  4.8  5.0
```
rep() 是重复函数，它可以将某一向量重复若干次再放入新的变量中
```R
   > x<-c(1,4,6.25);x
   [1] 1.00 4.00 6.25
   > s<-rep(x,times=3);s
   [1] 1.00 4.00 6.25 1.00 4.00 6.25 1.00 4.00 6.25
```
all判断一个逻辑向量是否都为真值; any判断其中是否有真值
```R
   > all(c(1, 2, 3, 4, 5, 6, 7) > 3)
   [1] FALSE
   > any(c(1, 2, 3, 4, 5, 6, 7) > 3)
   [1] TRUE
```
检查缺失数据
```R

```
83/310
