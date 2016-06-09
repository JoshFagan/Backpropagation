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
    %%%%% Check for proper opts content
    returning = 0;

    if isfield( opts, 'arch' ) == 0
        disp( 'No architecture specified' )
        returning = 1;
    elseif isfield( opts, 'test' ) == 0
        disp( 'No testing file specified' )
        returning = 1;
    elseif isfield( opts, 'train' ) == 0
        disp( 'No training file specified' )
        returning = 1;
    elseif isfield( opts, 'val' ) == 0
        disp( 'No validation file specified' )
        returning = 1;
    end

    if returning
       return 
    end

    %%%%% Load data from specified files
    Test  = load( opts.test );
    Train = load( opts.train );
    Val   = load( opts.val );
    
    % Check to ensure size of point label and feature information is the same
    % across data sets
    if size(Test, 2) ~= size(Train, 2)
        disp( 'Test data and train data do not have the same number of ' )
        disp( 'features or label information' )
        return 
    elseif size(Test, 2) ~= size(Val, 2)
        disp( 'Test data and validation data do not have the same number of ' )
        disp( 'features or label information' )
       return 
    end

    % Check to ensure size of point label and feature information is the same 
    % as the sum of the specified inout and output layer size
    if size(Test,2) ~= ( opts.arch(1) + opts.arch(end) )
        disp( 'Inappropriate architecture settings:' ) 
        disp( 'Input layer and output layer should sum to size of data rows' )
       return 
    end


    %%%%% Create weight and layer matrices

    %%%%% Launch backpropagation neural network algorithm
end
