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
    num_layer = 0;  % Number of layers in the neural network


    %%%%% Check for proper opts content
    returning = 0;

    if isfield( opts, 'alpha' ) == 0
        disp( 'No learning rate specified' )
        returning = 1;
    elseif isfield( opts, 'arch' ) == 0
        disp( 'No architecture specified' )
        returning = 1;
    elseif isfield( opts, 'max_iter' ) == 0
        disp( 'No maximum number of iterations specified' )
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
    Test.points  = load( opts.test );
    Train.points = load( opts.train );
    Val.points   = load( opts.val );

    % Check to ensure size of point label and feature information is the same
    % across data sets
    if size(Test.points, 2) ~= size(Train.points, 2)
        disp( 'Test data and train data do not have the same number of ' )
        disp( 'features or label information' )
        return 
    elseif size(Test.points, 2) ~= size(Val.points, 2)
        disp( 'Test data and validation data do not have the same number of ' )
        disp( 'features or label information' )
       return 
    end

    % Check to ensure size of point label and feature information is the same 
    % as the sum of the specified inout and output layer size
    if size(Test.points,2) ~= ( opts.arch(1) + opts.arch(end) )
        disp( 'Inappropriate architecture settings:' ) 
        disp( 'Input layer and output layer should sum to size of data rows' )
       return 
    end

    % Transform point information into point and label information
    Test.labels  = Test.points( :, opts.arch(1)+1:end );
    Test.points  = Test.points( :, 1:opts.arch(1) );
    Train.labels = Train.points( :, opts.arch(1)+1:end );
    Train.points = Train.points( :, 1:opts.arch(1) );
    Val.labels   = Val.points( :, opts.arch(1)+1:end );
    Val.points   = Val.points( :, 1:opts.arch(1) );
    

    %%%%% Train neural network with backpropagation algorithm
    W = create_model( opts, Test, Train, Val );
end
