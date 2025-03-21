%   ** VECTORS AND MATRICES **

%  A single number, called a 'scalar', is represented by a 1-by-1 array, meaning the array contains one row and one column.
x = 4 

% arrays with multiple elements can be created using square brackets
y = [4 8]


% When the numbers are separated by using 'spaces' , MATLAB combines the numbers into a 'row' vector, which is an array with one row and multiple columns (1-by-n). 

% When the numbers are separated by using 'semicolons', MATLAB creates a 'column' vector (n-by-1).
z = [3; 7]


% Combination of spaces and semicolons is used to create a 'matrix', which is an array with multiple rows and columns. 
% When creating a matrix, elements are entered row by row.
x = [3 4 5; 6 7 8]


% Can perform calculations within the square brackets
a = [abs(-4) 4^3 sqrt(10) pi^2 ]


% MATLAB provides some flexibility for creating arrays.
b = [7 9]
b=[7,9] 
b = [7, 9]


% It is common to create vectors containing evenly-spaced numbers

% For long vectors, a shorthand method for creating evenly spaced vectors is to use the colon operator (:) and specify only the start and end values.
c = 2:9

% The ':' operator uses a default spacing of 1

% To specify a different spacing
d = 2:0.5:8     % start:space:end


% For particular no of elements in a vector use 'linspace' function
e = linspace(1, 10, 5)     % linspace(first,last,number_of_elements)


% For linearly spaced column vector, use the transpose operator (') that converts a row vector to a column vector.
f = 2:6
f = f'
f


% Create column vectors in a single command by creating the row vector and transposing it all on one line. Use parentheses to specify the order of operations.
g = (2:5:30)'



% CREATE ARRAYS WITH FUNCTIONS

% Create matrices of random numbers.
h = rand(4)     % rand(n) creates n-by-n (square)matrix of random numbers  


% matrix creation functions allows to input 'one' number to create a 'square' matrix (n-by-n) or input 'two' numbers to create a 'rectangular' matrix (m-by-n)
i = rand(4, 6)   % rand(row, column)


% Array creation functions accept the same inputs as rand

% The zeros function create matrices of all zeros 
j = ones(2, 5)

% The ones function create matrices of all ones
k = zeros(7, 4)


% To determine the size of an existing matrix use the 'size' function
size(j)

% Create a matrix with the same size as an existing matrix in one line of code
rand(size(k))


% Creates a matrix named x that contains random integers in the range from 1 to 20, has 5 rows, has 7 columns
l = randi([1, 20], 5, 7)