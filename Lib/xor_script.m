%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Joshua Fagan
% Date:   06/09/2016
%
% Description: Script used to learn the exclusive OR logic opperation 
%
% Required user specified values:
%   Array of positive integral values specifying number of nodes in each layer 
%       of the neural network
%       Minimum number of specified values is two [input layer, output layer] 
%       No maximum number of specified values
%   Path to and name of file containing testing data
%   Path to and name of file containing training data
%   Path to and name of file containing validation data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Neural network architecture
opts.arch = [ 2, 3, 1];

% Testing data file 
opts.test = '../Data/xor_test.txt'

% Training data file 
opts.train = '../Data/xor_train.txt'

% Validation data file 
opts.val = '../Data/xor_val.txt'


% Launch the main file using specified hyperparameter values
main( opts );
