% ** ARRAy INDEXING AND MODIFICATIONS **


% INDEX TO ARRAYS

% Extract values from an array using row-column indexing.
l = x(3, 5)    % matrix(row, column)


% The MATLAB keyword 'end' can be used as either a row or column index to reference the last element
m = y(end, 4)

% Use arithmetic with the keyword 'end'
n = z(end-3, 5)


% If only one index is used with a matrix, MATLAB traverses down each column in order.
A = [5 6; 7 8]
A(3)



% EXTRACT MULTIPLE ELEMENTS

% When used as an index, the colon operator (:) specifies all the elements in that dimension.
o = A(:, 1)    % creates a column vector containing all the elements from the first column of A


% Use the colon operator to specify a range of values
p = A(1:3,:)    % creates a matrix containing the first, second, and third rows of the matrix A


% To index into a vector, use a single index value.
q = p(3)    % returns the third element of row or column vector p


% Use a single range of index values to reference multiple vector elements
r = n(3:end)     % returns a subset of vector n containing the elements from index 3 to the end.


% Indices can be nonconsecutive numbers. 
s = [1 3 6]
d(s)



% CHANGE VALUES IN ARRAYS

% Extract entire columns of arrays by using the ':' operator
t = x(:, end)    % t contains the last column of x


% Change the elements in a vector by combining indexing with assignment
t(2) = 11     % changes the second element of t to 11


% Use indexing to change the elements in a matrix
t(3, 4) = 7   % changes the element at third row and fourth column


% Combine indexing with assignment to change array elements to other elements
t(1) = t(3)    % changes the value of t(1) to t(3)




%  ** PERFORM ARRAY OPERATIONS ON VECTORS **

x = [2:2:60]
y = [4:4:80]

% Add a scalar value to all the elements of an array
a = x + 2
a


% Add any two arrays of the same size
b = x + y
b 


% Multiply or Divide all the elements of an array by a scalar
c = 3*a
d = x/2


% Apply basic statistical functions in MATLAB to a vector to produce a single output

% Maximum value of a vector can be determined using the 'max' function
xMax = max(x)


% MATLAB has functions that perform mathematical operations on an entire array of values in a single command. 

% To find the square root of each element in array x 
xSqrt = sqrt(x)


% To find the rounded value of the elements in array y
yRound = round(y)


% The '.*' operator performs element-wise multiplication by multiplying the corresponding elements of two equally sized arrays.
c = [2, 4] .* [6, 8]


% There are other compatible sizes for array operations
d = [1 2; 3 4; 5 6; 7 8].*[1;2;3;4]       % 4 x 2



% ARITHMETIC OPERATION ON DATE AND TIME

% use the datetime() method that will display current date and time. Add 2 hours to it and display the date time
time1 = datetime('now')
time2 = time1 + hours(2)

% For future dates and time and display the array of vector
time1 = datetime('now')
time2 = time1 + hours(2:5)

% subtract operation
time1 = datetime('now')
time2 = time1 - hours(2)

% make use of the minutes() method 
time1 = datetime('now')
time2 = time1 - minutes(45)

% get a vector array using subtract operation
time1 = datetime('now')
time2 = time1 - hours(2:5)

% use of days() methods
time1 = datetime('now')
time2 = time1 + days(5)

% ubtract and get the past date time using the days() method
time1 = datetime('now')
time2 = time1 - days(5)

% 

