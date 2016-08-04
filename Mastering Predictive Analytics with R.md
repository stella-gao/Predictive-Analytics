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
* KNN
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
    Sepal.Length Sepal.Width Petal.Length Petal.Width Species
    60 5.2 2.7 3.9 1.4 versicolor
    65 5.6 2.9 3.6 1.3 versicolor
    107 4.9 2.5 4.5 1.7 virginica
    90 5.5 2.5 4.0 1.3 versicolor
    58 4.9 2.4 3.3 1.0 versicolor
```
We would label our new sample as belonging to the versicolor species. Notice that setting the value of k to an odd number is a good idea, because it makes it less likely that we will have to contend with tie votes (and completely eliminates ties when the number of output labels is two).

