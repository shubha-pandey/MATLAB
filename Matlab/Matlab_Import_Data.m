%  ** DATA IMPORT **

% IMPORT DATA AS A TABLE

% Import file using 'Import tool' 

% Display the imported table
tablename


% Use dot notation to extract a variable from a table
var = table.VarName


% Append the calculated result to a table, instead of creating separate variables for each new calculation
data.HeightMeters = data.HeightYards * 0.9144     % If the variable data.HeightMeters doesn't exist, MATLAB creates a new variable in the data table with the name HeightMeters
elements.Mass = elements.Density .* elements.Volume1


% Interact with a table by clicking it in the output pane of a live script
% Sort a table using one of its variables
% To save table modifications in script, click the Update Code button
elements = sortrows(elements, "Mass", "descend")   % this is the code that will be updated in the script
elements = sortrows(elements, "Mass")


% Use dot notation to extract table variables. To extract rows, use regular array indexing.
top3 = elements(1:3,:)    % extracting the first three rows of the table.  top3 is also a table
