%  ** FUNCTION CALLS **

x = [2:2:60]


% REQUEST MULTIPLE OUTPUTS IN FUNCTION CALLS

% Apply 'size' function to a vector or matrix to produce a single output variable containing the array size in a two-element row vector. 
% The first element is the number of rows and the second element is the number of columns.
s = size(x)


% Request two output variables from the 'size' function. 
% In this case, each variable contains the size of one of the dimensions of the input array. 
% Use square brackets ([ ]) to request more than one output.
[xrow,xcol] = size(x)


% Find the maximum value of a vector and its corresponding index value using the 'max' function. 
% The first output from the max function is the maximum value of the input vector. 
% When called with two outputs, the second output is the index value.
[xMax,idx] = max(x)


% Ignore the first output by using a tilde (~) in its place if only the second output from a function is needed
[~,xcol] = size(x)


%  ** DOCUMENTATION **

% open the documentation using the 'doc' function. 

% If the name of the function is known and more information about it is required
doc randi

% If the name of the function is not known, search the documentation using phrases
doc normally distributed numbers
