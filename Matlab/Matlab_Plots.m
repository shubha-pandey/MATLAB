%  ** PLOTS **

% PLOT VECTORS

% plot two vectors of the same length against each other using the 'plot' function
% The plot function creates lines
plot(x, y)


% The color, line style, and marker of a plot can be specified by using different symbols in double quotes as another input to the plot function

% Plot a red (r) dashed (--) line with circle (o) markers 
plot(x,y,"r--o")


% Each plot command creates a separate plot. 
% To plot one line on top of another in the same axes use the hold on command.
plot(x1,y1)
hold on
plot(x2,y2, "k s")      % black(k), square(s) markers, no line


% While the hold state is on, plots continue to appear on the same axes. 
% To return to the default plot behavior, where each plot appears on its own axes, enter hold off
hold off


% When a single vector is plotted by itself, MATLAB uses the vector values as the y-axis data and sets the x-axis data to the range of 1 to n (the number of elements in the vector).
plot(y)


% Set properties using one or more name-value arguments, which consist of an argument name and an associated value.
plot(y,LineWidth=5)     % plots a heavy line


% Provide name-value arguments to the plot function after the line specification
plot(x,y,"ro-",LineWidth=5)



% ANNOTATE PLOTS

% Add labels to plots using plot annotation functions
% The input to these functions is text. Text in MATLAB is enclosed in double quotes (").

% Add title using 'title' function
title("Plot Title")


% Add labels to your axes using the 'xlabel' and 'ylabel' functions
xlabel("X-Axis Label")
ylabel("Y-Axis Label")


% Add a legend to the plot using the 'legend' function.
legend("a","b","c")


% Use the value of a variable in plot annotations by joining text with the variable.
bar(data(3,:))
title("Sample " + sample(3) + " Data")
