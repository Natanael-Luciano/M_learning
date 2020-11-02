function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
n = size(X)(2);
% You need to return the following variables correctly 
J = 0;
alpha = 1;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
h_teta = X*theta;  %contains all the values for one given X.
size(h_teta); %column vector
cost = 0;
aux = 0;

cost =  sum((h_teta - y).^2);

for i = 2:n
  aux = aux + theta(i,1)^2;   %regularization term
endfor
cost = (cost/(2*m)) + (lambda*aux)/(2*m);

J = cost;  
 
l_theta = lambda*theta;    #computing grad
theta;
l_theta(1,1) = 0;

grad =  (alpha/m)*((X'*(h_teta - y)) + l_theta);

grad = grad(:);









% =========================================================================



end
