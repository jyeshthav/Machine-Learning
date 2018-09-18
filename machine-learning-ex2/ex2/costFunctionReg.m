function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

H = sigmoid(X*theta);

theta1 = theta(2:size(theta));
thetaR = [0; theta1];

% define new thetaR which sets theta(1) to 0 and copies the rest of the theta elements as it is

J = (-1/m) * sum (y' * log(H) + (1 - y)' * log(1 - H)) + (lambda/(2*m)) * sum(thetaR .^ 2);

grad = (1/m) * (X' * (H - y) + lambda*thetaR);



% =============================================================

end