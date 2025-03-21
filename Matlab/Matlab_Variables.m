% ** VARIABLES  **



3 * 5

7/0

% Unless the output variable is specified, MATLAb stores results in a variable named `ans`


m = 5 * 4     

% The workspace stored the Name, value, size and class of the variable 'm' created

m = m + 1

y = m/2 


% When entering a command without a semicolon at the end, MATLAB displays the result.

k = 8-2;

% By adding a semicolon to the end of a command the result is not dispalyed



y      % displays the current value of that variable

% The value of 'y' is unchanged because MATLAB does not rerun previous commands in the Command Window.
% To recalculate 'y' with the modified value of 'm', repeat the command 'y = m/2'.


% To add comments use '%' symbol
a = 3   % assign the value 9 to x

% To write a block of comments use the block comment operators '% {' and '% }'



% NAME VARIABLES

a = 7

% MATLAB variables can be named anything as long as they start with a letter and contain only letters, numbers, and underscores (_).

A = -5

% They are case-sensitive

mean = (A+a)/2



% MULTIPLE ASSIGNMENTS
a = 2; b = 7; c = a * b



% SAVE AND LOAD VARIABLES 

% 'save' command is used to save variables present in the workspace to a MAT-file (file format specific to MATLAB)
save filename.mat


% see the contents of any variable by entering the name of the variable in the Command Window
varname 


% 'load' command is used to load variables from a MAT-file
load filename.mat

% The load() method takes in the filename and can also specify the variables that's needed in it.
load(‘filename’)

load('filename', 'varname')



% USE BUILT-IN FUNCTIONS AND CONSTRAINTS

% MATLAB contains a wide variety of built-in functions, such as
 
% 'pi' to represent 'π'
x = pi/2

% 'abs' (absolute value) and 'eig' (eigenvalues)
a = sin(1)

% 'sqrt'
z = sqrt(-36)

% - the imaginary number 'i', is a built-in constant in MATLAB.
% - The Command Window output shows only the first four decimal places. 




