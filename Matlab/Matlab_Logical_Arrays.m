%  ** LOGICAL ARRAYS **

% LOGICAL INDEXING

% Relational operators, such as '>', '<', '==', and '~=' perform comparisons between two values. 
% The outcome of a comparison for equality or inequality is either 1 (true) or 0 (false).

x = pi < 4


% Compare an array to a single scalar value using relational operators. 
% The result is a logical array of the same size as the original array.
[5 10 15] > 12

y = v1 < 4


% Use a logical array as an array index, so MATLAB extracts the array elements where the corresponding index is 1 (true).
v = v1(v1 > 6)    % extracts all elements of v1 that are greater than 6
v


% Logical indexing with two different arrays
v = sample(v1 > 6)


% Logical indexing to reassign values in an array
x(x==999) = 1    % replace all values in the array x that are equal to 999 with the value 1


% Combine logical comparisons by using the logical operators AND (&) and OR (|)

% find values less than 6 and greater than 5
x = v1(v1<6 & v1>5)

% find values greater than 6 or less than 2
x = v1(v1>6 | v1<2)

