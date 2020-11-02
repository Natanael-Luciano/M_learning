function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = size(X)(2);
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
alpha = 1;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
h_teta = sigmoid(X*theta);  %contains all the values for one given X.
size(h_teta); %column vector
cost = 0;
aux = 0;
for i = 1:m
  cost = cost + y(i,1)*(log(h_teta(i))) + (1-y(i,1))*log(1- h_teta(i));
endfor

for i = 2:n
  aux = aux + theta(i,1)^2;   %regularization term
endfor
cost = -(cost/m) + (lambda*aux)/(2*m);

J = cost;  
 
l_theta = lambda*theta;    #computing grad
theta;
l_theta(1,1) = 0;

grad =  (alpha/m)*((X'*(h_teta - y)) + l_theta);

% =============================================================

end
