%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Joshua Fagan
% Date:   06/09/2016
%
% Description: Template for script used to set up user specified hyperparameters
%              and launch the main file
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
opts.arch = [ num_input, num_hid_1, num_hid_2, num_hid_3, num_output];

% Testing data file 
opts.test = 'path/to/data/file/testing.txt';

% Training data file 
opts.train = 'path/to/data/file/training.txt';

% Validation data file 
opts.val = 'path/to/data/file/validation.txt';


% Launch the main file using specified hyperparameter values
main( opts );
