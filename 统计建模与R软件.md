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
> sd(X1)
[1] 3.028901
```

