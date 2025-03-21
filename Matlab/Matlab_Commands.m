% ** COMMANDS **


% Open the workspace using command
workspace


% 'disp()' method takes care of displaying the variables values
disp(varname)


% 'openvar()' method takes in a variable as the input and the variable is opened inside the variable editor. Later the values can be changed  or deleted them as per requirement.
openvar('varname')


% Control the displayed precision with the 'format' function.

% format 'long' to display more decimal places of the variable
format long
x

% format 'short' to to display default
format short
x

% format 'bank' to rounds numbers to two decimal places
format bank
x

% 'format short e' command to display in exponential form with four decimal places plus the exponent
format short e
4.678 * 4.9

% 'format long e' command to display in exponential form with four decimal places plus the exponent
format long e
x = pi

% format 'rat' command gives the closest rational expression resulting from a calculation
format rat
4.678 * 4.9

% to display positive, negative or zero
format +

% to suppress some line feeds
format compact

% to reset to less compact display mode
format loose



% COMMANDS FOR MANAGING A SESSION

% 'clear' command cleans (removes all the variables from) the 'workspace'
clear

% to remove a particular variable from the workspace
clear varname

% make use of regular expression and removes all the variables that start with test and a
clear -regexp ^test ^a;

% 'clearvars' method removes all the variables present in the workspace
clearvars

% to remove a particular variable from the workspace
clearvars varname varname 

% 'clc' command is used to clean up the 'Command Window'
clc


% 'whos' Command to view the content of the file saved 
whos -file filename.mat

% 'who' to display the names of the variables in workspace
who


% 'exist' to check for existence of file or variable
exist


% 'global' to declares variables to be global
global


% to search for a help topic
help

% to search help entries for a keyword
lookfor


% to Stop MATLAB
quit



% COMMANDS FOR WORKING WITH SYSTEM

% to display current directory
cd 


% to display current date
date 

a = date

% to return a date with time that represents points in time
% Returns an array that will have current date and time.
datetime 

% relativeDay can have inputs as “today”, “yesterday”,”tomorrow”, or “now”.
datetime(relativeDay)

% DateStrings can be date and time in array format
datetime(DateStrings)

% Date vector is a matrix of m-by-6 or m-by-3. With m-by-6 it will have day,month,year , hour ,minute and seconds. With my-by-3 it will be a matrix with day, month and year.
datetime(DateVectors)

% Datetime with year, month and day.
datetime(Y,M,D)

% Datetime with year, month , day, hour , minute and seconds.
datetime(Y,M,D,H,MI,S)

time_now = datetime('now','TimeZone','local','Format','d-MMM-y HH:mm:ss Z')

DateasStrings = {'2023-05-22';'2023-05-23'};
t = datetime(DateasStrings)



% to display current year and month
calendar

% to display the given year month
calendar(y, m)

% d datetime value or text timestamp that can be year month and day .As per the value of d , the calendar for that month and year will be displayed
calendar(d)


% Here t is the datetime.It will shift the datetime by the unit given to the start.
t = dateshift(t,'start',unit)   

% Here t is the datetime. It will shift the datetime by the given unit to the end.
t = dateshift(t,'end',unit) 

% Here datetime will be shifted to the given dayofweek, if the current date falls on the same dayofweek it will return the same date.
t = dateshift(t,'dayofweek',dow) 


% to delete a file
delete


% to switch on/off diary file recording
diary


% to ists all files in current directory
dir 


% to load workspace variables from a file
load


% to display search path
path


% to display current directory
pwd


% to save workspace variables in a file
save


% to display contents of a file
type


% to list all MATLAB files in the current directory
what


% to read .wk1 spreadsheet file
wklread



% INPUT AND OUTPUT COMMANDS

% to display contents of an array or string
disp


% to read formatted data from a file
fscanf


% to control screen-display format
format


% to perform formatted writes to screen or file
fprintf


% to display prompts and waits for input
input


% to suppress screen printing
;


% The fscanf and fprintf commands behave like C scanf and printf functions. 
% They support the following format codes

% Format as a string
%s

% Format as an integer
%d

% Format as a floating point value
%f

% Format as a floating point value in scientific notation
%e

% Format in the most compact form: %f or %e
%g

% Insert a new line in the output string
\n 

% Insert a tab in the output string
\t  



% VECTOR MATRIX AND ARRAY COMMANDS

% Concatenates arrays
cat 


% Finds indices of nonzero elements
find 


% Computes number of elements
length


% Creates regularly spaced vector
linspace


% Creates logarithmically spaced vector
longspace


% Returns largest element
max  


% Returns smallest element
min 


% Product of each column
prod  


% Changes size
reshape 


% Computes array size
size 


% Sorts each column
sort 


% Sums each column
sum 


% Creates an identity matrix
eye 


% Creates an array of ones
ones 


% Creates an array of zeros
zeros 


% Computes matrix cross products
cross  


% Computes matrix dot products
dot  


% Computes determinant of an array
det 


% Computes inverse of a matrix
inv  


% Computes pseudoinverse of a matrix 
pinv 


% Computes rank of a matrix
rank  


% Computes reduced row echelon form 
rref  


% Creates cell array
cell 


% Displays cell array
celldisp


% Displays graphical representation of cell array
cellplot


% Converts numeric array to cell array
num2cell 


% Matches input and output lists
deal 


% Identifies cell array.
iscell  



% PLOTTING COMMANDS

% Sets axis limits
axis


% Intelligent plotting of functions.
fplot


% Displays gridlines.
grid


% Generates xy plot
plot 


% Prints plot or saves plot to a file
print


% Puts text at top of plot
title


% Adds text label to x-axis
xlabel


% Adds text label to y-axis
ylabel


% Creates axes objects
axes


% Closes the current plot
close 

% Closes all plots
close all


% Opens a new figure window
figure


% Enables label placement by mouse
gtext


% Freezes current plot
hold 


% Legend placement by mouse
legend 


% Redraws current figure window
refresh


% Specifies properties of objects such as axes
set 


% Creates plots in subwindows
subplot


% Places string in figure
text 


% Creates bar chart
bar


% Creates log-log plot
loglog


% Creates polar plot
polar


% Creates semilog plot. (logarithmic abscissa)
semilogx


% Creates semilog plot. (logarithmic ordinate)
semilogy


% Creates stairs plot
stars 

% Creates stem plot
stem
