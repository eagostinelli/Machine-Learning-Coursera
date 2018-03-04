function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% X matrice 97*2 (piena di uni and prima colonna)
% y vettore 97*1 
% tetha vet 2*1 

% J(theta) = 1/(2*m) * (X*theta - y)
 diff = (X*theta - y).^2;
 m2 = 2*m;
 
 J = (1/m2)* sum(diff);


% =========================================================================

end
