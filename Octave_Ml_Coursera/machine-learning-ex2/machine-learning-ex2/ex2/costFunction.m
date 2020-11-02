function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
alpha = 1;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

%theta is a column vector

h_teta = sigmoid(X*theta);  %contains all the values for one given X.
size(h_teta); %column vector
cost = 0;
for i = 1:m
  cost = cost + y(i,1)*(log(h_teta(i))) + (1-y(i,1))*log(1- h_teta(i));
endfor

J = -(cost/m);

grad = (alpha/m)*(X'*(h_teta - y));








% =============================================================

end
