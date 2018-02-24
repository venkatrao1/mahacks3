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

predicted = sigmoid(X * theta);
error = -y.*log(predicted) -  ((y.*-1).+1).*log((predicted.*-1).+1);
J = sum(error)/m; % non-regularized cost function
J = J + sum(theta(2:end).^2)*lambda/(2*m);

grad=(sum((repmat(predicted-y,1,columns(X)).*X)./m)') .+ (theta.*(lambda/m)); 
grad(1) -= theta(1)*(lambda/m); % don't regularize theta(0)


% =============================================================

end
