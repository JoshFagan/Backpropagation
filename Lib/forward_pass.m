%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Joshua Fagan
% Date:   07/16/2016
%
% Description: Perform forward pass of one sample through the neural network
%
% Parameter: L - Cell array storing neural network post-activation layer values
% Parameter: W - Cell array storing neural network weight values
% Parameter: Z - Cell array storing neural network pre-activation layer values
%
% Return: L - Cell array storing updated neural network post-activation layer
%             values
% Return: Z - Cell array storing updated neural network pre-activation layer
%             values
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ L, Z ] = forward_pass( L, W, Z )
    num_layer = length( L );

    for i = 1:(num_layer-1)
        % Add bias node
        L{i} = [1; L{i}]; 

        % Perform weight-layer sum of products
        Z{i} = (L{i}' * W{i})';

        % Pass sum of product values through activation function
        L{i+1} = activation( Z{i} );
    end
end
