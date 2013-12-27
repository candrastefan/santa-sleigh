%% Packing Santa's Sleigh Competition - MATLAB Sample Code
%  
% This sample code will get you started with MATLAB for the Packing Santa's
% Sleigh Competition. You will import data, analyze, and visualize data,
% implement a naive optimization algorithm, evaluate the naive solution
% using the competition metric, and export a submission file.
%
% You can call the sample code from the command line by typing:
% Santas_Sleigh_MATLAB_Sample_Code
%
% The exported submission file will have the name submissionfile.csv.

% Copyright 2013 The MathWorks, Inc.


%% Importing Data
% You can use csvread to import presents.csv and save as a new variable

% First row of data (zero based, skip the header)
firstRow = 1;

% First column of data (zero based, don't skip any columns)
firstCol = 0;

% Store data in a variable called presents
presents = csvread('presents.csv', firstRow, firstCol);

% You can also use the Import Data button on the Home tab of the MATLAB
% Toolstrip. This will allow you to import data, as well as auto-generate
% code to perform the exact steps from the Import wizard. Everything done
% manually can be translated to the programmatic equivalent.

%% Analyzing Data
% Once the data is loaded, you may want to understand some basic statistics
% about the dataset.

% Check the size of the presents variable; each row represents the
% dimensions of one present
[rows, columns] = size(presents);
numPresents = rows % the number of presents will be displayed in the Command Window

% Save the columns as separate arrays, representing the IDs, widths,
% lengths, and heights of each present
presentIDs = presents(:,1);
presentWidth = presents(:,2);
presentLength = presents(:,3);
presentHeight = presents(:,4);