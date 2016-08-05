* A model is a representation of a state, process, or system that we want to understand and reason about.
* The field of predictive analytics builds models from data.
* A stochastic model is one that assumes that there is an intrinsic source of randomness to the process being modeled.
* Two commonly cited interpretations about probability are the Frequentist probability and the Bayesian probability. Frequentist probability is associated with repeatable experiments, such as rolling a one-sided die. Bayesian probability is associated with a subjective degree of belief or surprise in seeing a particular outcome and can, therefore, be used to give meaning to one-off events, such as the probability of a presidential candidate winning an election.
* The data's inherent randomness cannot be removed no matter what model we select. These ideas lead us to an important distinction in the types of error that we encounter during modeling, namely the reducible error and the irreducible error respectively.
* Reducible errors can be minimized not only through selecting the right model but also by ensuring that the model is trained correctly.
* The core components of a statistical model are typically:
  1. A set of equations with parameters that need to be tuned
  2. Some data that are representative of a system or process that we are trying to model
  3. A concept that describes the model's goodness of fit
  4. A method to update the parameters to improve the model's goodness of fit
* To compute the distance between two observations in the feature space, we often use the Euclidean distance, which is the length of a straight line between two points.
* kNN is a model that uses supervised learning, because the model makes its prediction for an input point by combining the values of the output variable for a small number of neighbors to that point.
```R
    > iris_features <- iris[1:4]
    > dist_eucl <- function(x1, x2) sqrt(sum((x1 - x2) ^ 2))
    > distances <- apply(iris_features, 1, function(x) dist_eucl(x, new_sample))
    > distances_sorted <- sort(distances, index.return = T)
    > str(distances_sorted)
    List of 2
    $ x : num [1:150] 0.574 0.9 0.9 0.949 0.954 ...
    $ ix: int [1:150] 60 65 107 90 58 89 85 94 95 99 ...
```
The $x attribute contains the actual values of the distances computed between our sample iris flower and the observations in the iris data frame. The $ix attribute contains the row numbers of the corresponding observations. If we want to find the five nearest neighbors, we can subset our original iris data frame using the first five entries from the $ix attribute as the row numbers:
```R
    > nn_5 <- iris[distances_sorted$ix[1:5],]
    > nn_5
    RowNumber Sepal.Length Sepal.Width Petal.Length Petal.Width Species
    60 5.2 2.7 3.9 1.4 versicolor
    65 5.6 2.9 3.6 1.3 versicolor
    107 4.9 2.5 4.5 1.7 virginica
    90 5.5 2.5 4.0 1.3 versicolor
    58 4.9 2.4 3.3 1.0 versicolor
```
We would label our new sample as belonging to the versicolor species. Notice that setting the value of k to an odd number is a good idea, because it makes it less likely that we will have to contend with tie votes (and completely eliminates ties when the number of output labels is two).
* Between unsupervised and supervised methods, which are two absolutes in terms of the availability of the output variable, reside the semi-supervised and reinforcement learning settings.
* Nonparametric models generally make no assumptions on the particular form of the output function. Splines are a common example of a nonparametric model. The key idea behind splines is that we envisage the output function, whose form is unknown to us, as being defined exactly at the points that correspond to all the observations in our training data. Between the points, the function is locally interpolated using smooth polynomial functions. Essentially, the output function is built in a piecewise manner in the space between the points in our training data. Unlike most scenarios, splines will guarantee 100 percent accuracy on the training data, whereas, it is perfectly normal to have some errors in our training data. Another good example of a nonparametric model is the k-nearest neighbor algorithm.
* The distinction between regression and classification models has to do with the type of output we are trying to predict, and is generally relevant to supervised learning. Regression models try to predict a numerical or quantitative value, such as the stock market index, the amount of rainfall, or the cost of a project. Classification models try to predict a value from a finite (though still possibly large) set of classes or categories. Examples of this include predicting the topic of a website, the next word that will be typed by a user, a person's gender, or whether a patient has a particular disease given a series of symptoms. kNN is a model that can be used in both regression and classification settings.
* The process of predictive modeling
  1. Defining the model's objective
  2. Define a performance metric for our model and then a minimum threshold of acceptable performance. (What sort of performance we are interested in achieving, and how we will measure this.)
  3. Collecting the data: We can anticipate that certain characteristics of our problem will require more data. The greater the number of output classes we have, the more data we will need to collect.
  3. 

46/414
