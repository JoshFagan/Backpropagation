%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Joshua Fagan
% Date:   07/17/2016
%
% Description: Perform back propagation of errors
%
% Parameter: alpha - Learning rate
% Parameter: L     - Post-activation layer values
% Parameter: T     - Base truth output value
% Parameter: W     - Weight values
% Parameter: Z     - Pre-activation layer values
%
% Return: W - Updated weight values
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [W] = backprop( alpha, L, T, W, Z )
    % Partial derivative of the error of the network with respect to the output
    % of the network
    % Error of network being the quadratic cost function:
    % E = 1/2*||T - L{end}||^2
    Gradient = -(Target - L{end});

    % Partial derivative of the error with respect to the last pre-activation
    % layer values 
    Gradient = Gradient .* activation_gradient( Z{end} );

    for i = flip(1:length(W))
        % Partial derivative of the error with respect to the ith weight layer
        DE_DW = (L{i} * Gradient');

        tmp_W    = W{i};
        tmp_W    = tmp_W(2:end,:);
        Gradient = tmp_W * Gradient;

        if i > 1
            Gradient = Gradient .* activation_gradient( Z{i-1} );
        end

        W{i} = W{i} - (alpha * DE_DW );
    end
end
