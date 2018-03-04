function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    % x1 = X(:,2); % only the second column --> 97*1
    % h = (theta(1) + theta(2)*x1); 
    %       1*1          1*1 97*1 = 97*1 
      
    % theta0 = theta(1) - alpha*(1/m)*sum(h-y);
    % theta1 = theta(2) - alpha*(1/m)*sum((h-y).*x1);
    %          1*1          1*1   1*1      97*1 97*1 97*1            
    % theta = [theta0; theta1];

       h      =      X  * theta;
       %97*1      97*2     2*1 
       
       theta_new = theta - (alpha/m)*(X'*(h-y)) ;
       %2*1        2*1   -          2*97  97*1    
       
       theta = theta_new;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

 printf = min(J_history)

end
