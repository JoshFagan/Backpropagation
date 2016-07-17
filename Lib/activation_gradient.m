%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Joshua Fagan
% Date:   07/17/2016
%
% Description: Calculate the gradient of the specified activation function
%
% Parameter: Z - Value to evaluate activation gradient at
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [gradient] = activation_gradient( Z )
    gradient = ( Z > 0 );
end
