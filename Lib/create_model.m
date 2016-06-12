%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Joshua Fagan
% Date:   06/09/2016
%
% Description: Create a neural network model using the backpropagation algorithm
%
% Parameter: opts - Structure storing user specified hyperparameter values
% Parameter: L    - Cell array storing neural network layers values
% Parameter: W    - Cell array storing neural network weight valeus
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [W] = create_model( opts, L, Test, Train, Val, W )
    % For specified number of iterations, or until convergence
    for iteration = 1:opts.max_iter
        % For each data point
            % Perform forward pass
            % Perform backpropagation

        % Discount learning rate
    end
end
