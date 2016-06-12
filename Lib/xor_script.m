%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Joshua Fagan
% Date:   06/09/2016
%
% Description: Script used to learn the exclusive OR logic opperation 
%
% Required user specified values:
%   Learning rate
%   Array of positive integral values specifying number of nodes in each layer 
%       of the neural network
%       Minimum number of specified values is two [input layer, output layer] 
%       No maximum number of specified values
%   Positive integer specifying maximum number of training iterations to perform
%   Path to and name of file containing testing data
%   Path to and name of file containing training data
%   Path to and name of file containing validation data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Clear all previous values
clear


% Learning rate
opts.alpha = 0.1;

% Neural network architecture
opts.arch = [ 2, 3, 1];

% Max number of iterations
opts.max_iter = 10;

% Testing data file 
opts.test = '../Data/xor_test.txt';

% Training data file 
opts.train = '../Data/xor_train.txt';

% Validation data file 
opts.val = '../Data/xor_val.txt';


% Launch the main file using specified hyperparameter values
main( opts );
