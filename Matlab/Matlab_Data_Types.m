%  ** DATA TYPES **

% Data Types Available in MATLAB

% 8-bit signed integer
int8

% 8-bit unsigned integer
uint8

% 16-bit signed integer
int16

% 16-bit unsigned integer
uint16

% 32-bit signed integer
int32

% 32-bit unsigned integer
uint32

% 64-bit signed integer
int64

% 64-bit unsigned integer
uint64

% single precision numerical data
single

% double precision numerical data
double

% logical values of 1 or 0, represent true and false respectively
logical

% character data (strings are stored as vector of characters)
char

% array of indexed cells, each capable of storing an array of a different dimension and data type
cell array

% C-like structures, each structure having named fields capable of storing an array of a different dimension and data type
structure

% pointer to a function
function to handle

% objects constructed from a user-defined class
user classes

% objects constructed from a Java class
java classes


% EXAMPLE

str = 'Hello World!'
n = 2345
d = double(n)
un = uint32(789.50)
rn = 5678.92347
c = int32(rn)



% DATA TYPE CONVERSION

% Convert to character array (string)
char

% Convert integer data to string
int2str

% Convert matrix to string
mat2str

% Convert number to string
num2str

% Convert string to double-precision value
str2souble

% Convert string to number
str2num

% Convert numeric bytes to Unicode characters
native2unicode

% Convert Unicode characters to numeric bytes
unicode2native

% Convert base N number string to decimal number
base2dec

% Convert binary number string to decimal number
bin2dec

% Convert decimal to base N number in string
dec2base

% Convert decimal to binary number in string
dec2bin

% Convert decimal to hexadecimal number in string
dec2hex

% Convert hexadecimal number string to decimal number
hex2dec

% Convert hexadecimal number string to double-precision number
hex2num

% Convert singles and doubles to IEEE hexadecimal strings
num2hex

% Convert cell array to numeric array
cell2mat

% Convert cell array to structure array
cell2struct

% Create cell array of strings from character array
cellstr 

% Convert array to cell array with potentially different sized cells
mat2cell

% Convert array to cell array with consistently sized cells
num2cell

% Convert structure to cell array
struct2cell


% EXAMPLE 

x = int32([5.32 3.47 6.28]) .* 7.5
x = int64([5.32 3.47 6.28]) .* 7.5
x = num2cell(x)


% DETERMINATION OF DATA TYPES

% Detect state
is 

% Determine whether input is cell array
isa 

% Determine whether input is cell array of strings
iscellstr

% Determine whether item is character array
ischar

% Determine whether input is structure array field
isfield

% Determine if input is floating-point array
isfloat

% True for Handle Graphics object handles
ishghandle

% Determine if input is integer array
isinteger

% Determine if input is Java object
isjava

% Determine if input is logical array
islogical

% Determine if input is numeric array
isnumeric

% Determine if input is MATLAB object
isobject

% Check if input is real array
isreal

% Determine whether input is scalar
isscalar

% Determine whether input is character array
isstr

% Determine whether input is structure array
isstruct

% Determine whether input is vector
isvector

% Determine class of object
class

% Check validity of array
validateattributes

% List variables in workspace, with sizes and types
whos


% EXAMPLE

x = 3
isinteger(x)
isfloat(x)
isvector(x)
isscalar(x)
isnumeric(x)
 
x = 23.54
isinteger(x)
isfloat(x)
isvector(x)
isscalar(x)
isnumeric(x)
 
x = [1 2 3]
isinteger(x)
isfloat(x)
isvector(x)
isscalar(x)
 
x = 'Hello'
isinteger(x)
isfloat(x)
isvector(x)
isscalar(x)
isnumeric(x)