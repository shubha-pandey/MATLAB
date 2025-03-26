% In the Stellar Motion script, the speed (in km/s) of a star relative to Earth is calculated by using its spectrum. 
% In this one, calculate all the stars' speeds at once. Then create the plot of the star spectra.

% load the data 
load starsData

[sHa,idx] = min(spectra(:,2));
lambdaHa = lambda(idx);
z = lambdaHa/656.28 - 1;
speed = z*299792.458;


% Line 6 of the script extracts the spectrum data for the second star in the matrix spectra. Then lines 7-9 calculate the speed based on that data. 
% How to calculate the speed of all the stars in spectra?

% Repeat the calculations in a for loop, but it is more efficient to use array operations instead.

% Modify line 6 of the script. Calculate the speed of all the stars by deleting (:,2).

[sHa,idx] = min(spectra);
lambdaHa = lambda(idx);
z = lambdaHa/656.28 - 1;
speed = z*299792.458;


% speed is now a vector. A positive speed means that the star is moving away from Earth (redshifted spectrum), and a negative speed means that the star is moving toward Earth (blueshifted spectrum).

% Moving forward plot the spectra of all seven stars using different line properties for redshifted and blueshifted spectra. It is convenient to use a for loop to access each star's data one at a time.

% Create a for loop with a loop index named v. The loop index should progress through all columns of spectra (1 to 7).
% In the loop body, extract the vth column of spectra to a variable named s.

for v = 1:7
    s = spectra(:, v);
end


% Use an if statement to differentiate between redshifted and blueshifted spectra.

% First, plot the blueshifted spectra using dashed lines.
% Add an if statement to the for loop body. If speed(v) is less than or equal to 0, create a plot of s against lambda using a dashed line (--).
% Add the command hold on between the two end keywords so that you only create one plot.

for v = 1:7
    s = spectra(:, v);
    if speed(v)<=0
        plot(lambda, s, "--")
    end
hold on
end


% Plot the redshifted spectra using thick lines.
% Add an else statement. If speed(v) is greater than 0, create a plot of s against lambda using a line width of 3.
% After the for loop, enter hold off. 

for v = 1:7
    s = spectra(:, v);
    if speed(v)<=0
        plot(lambda, s, "--")
    else 
        plot(lambda, s, LineWidth=3)
    end
hold on
end
hold off


% Pass text directly to the legend function.
% The string array starnames contains the name of each star in spectra.
% Add a legend to the plot using the array starnames.

legend(starnames)


% In the plot, identify stars with redshifted spectra by using their line styles, and then look up their names in the legend. 
% Determine the names of the redshifted spectra without a for loop?

% Use logical indexing to find elements that match a condition. e.g., c = b(a < 6)
% Create a variable movaway that contains the elements in starnames corresponding to where speed is greater than 0.

movaway = starnames(speed>0)


% Plotting functions can accept matrix inputs. plot(A) creates a line for each column in A.
% If you do not want to differentiate between redshifted and blueshifted spectra, you do not need to use a for loop.

%plot(lambda,spectra)
%legend(starnames)
