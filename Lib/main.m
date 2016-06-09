%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Joshua Fagan
% Date:   06/08/2016
%
% Description: Main file for setting up and launching backpropagation neural 
%              network learning algorithm, given user specified hyperparameters
%
% Parameter: opts - Structure storing user specified hyperparameter values
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [] = main( opts )
    % Check for proper opts content
    quitting = 0;

    if isfield( opts, 'arch' ) == 0
        disp( 'No architecture specified' )
        quitting = 1;
    elseif isfield( opts, 'test' ) == 0
        disp( 'No testing file specified' )
        quitting = 1;
    elseif isfield( opts, 'train' ) == 0
        disp( 'No training file specified' )
        quitting = 1;
    elseif isfield( opts, 'val' ) == 0
        disp( 'No validation file specified' )
        quitting = 1;
    end

    if quitting
        quit
    end

    disp( 'hello world' )

    % Load data from specified files

    % Create weight and layer matrices

    % Launch backpropagation neural network algorithm
end
