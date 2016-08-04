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
> distances <- apply(iris_features, 1,
function(x) dist_eucl(x, new_sample))
> distances_sorted <- sort(distances, index.return = T)
```
