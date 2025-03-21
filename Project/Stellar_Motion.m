%{
A star's spectrum can be viewed by plotting the intensity of starlight observed at each wavelength.

Hydrogen, a major component of most stars, absorbs light and causes a dip in the spectrum. 
Hydrogen absorbs light precisely at 656.3 nanometers. 
If the star is moving, the spectrum's dip is observed at a different wavelength.
 
This difference can be used to measure the direction the star is moving and the velocity of the star.
%}


% load the data and defines measurement parameters
load starsData
nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14


% The star spectrum data in the spectra matrix was collected at evenly spaced wavelengths (λ), and provided starting wavelength (λstart), the spacing (λdelta), and the number of observations.

% Create a variable named lambdaEnd (λend) that contains the value of the last wavelength in the recorded spectrum. You can calculate lambdaEnd with the expression λstart+(nObs−1)λdelta
% Use lambdaEnd to create a vector named lambda (λ) that contains the wavelengths in the spectrum, from λstart to λend, in steps of λdelta

lambdaEnd = lambdaStart + (nObs-1) * lambdaDelta
lambda = [lambdaStart:lambdaDelta:lambdaEnd]


% Each column of spectra is the spectrum of a different star. The sixth column is the spectrum of star HD 94028.
% Extract the sixth column of spectra to a vector named s.

s = spectra(:, 6)


% Plot the spectra (s) as a function of wavelength (lambda). Use point markers (.) and a solid line (-) to connect the points.
% Add the x-label "Wavelength" and the y-label "Intensity" to the plot.

plot(lambda, s, ".-")
xlabel("Wavelength")
ylabel("Intensity")



% The min function allows two outputs, the second of which is the index for the minimum value. This index corresponds to the location of the hydrogen-alpha line (λHa).

% Create two variables, sHa and idx, that contain the minimum value of s and the index of that minimum value.
% Find the wavelength of the hydrogen-alpha line by using idx to index into lambda. Store the result as lambdaHa (λHa).

[sHa, idx] = min(s)
lambdaHa = lambda(idx)


% The point (lambdaHa,sHa) is the location of the hydrogen-alpha line.
% Add a point to the existing axes by plotting x = lambdaHa, y = sHa as a red square ("rs") with a marker size (MarkerSize) of 8.

hold on
plot(lambdaHa, sHa, "rs", MarkerSize=8)


% In the plot, it can be seen that the wavelength of the hydrogen-alpha line of HD 94028 is 656.62 nm, which is slightly longer than the laboratory value of 656.28 nm.
% Using the hydrogen-alpha wavelength of the star, the redshift factor (the speed of the star relative to Earth) can be calculated using the formula z=(λHa/656.28)−1. The speed can then be calculated by multiplying the redshift factor (z) by the speed of light (299792.458 km/s).

% Calculate the redshift factor (z) and the speed (in km/s) at which the star is moving away from Earth. Assign the redshift factor to a variable named z and the speed to a variable named speed.

z = (lambdaHa/656.28)-1
speed = z * 299792.458


% Having created a live script for finding the redshift, the script can be easily modified to repeat the calculation on any star in the spectra matrix.

% Modify the section of the script so that it performs the redshift calculation on the second star in spectra, not the sixth.

s = spectra(:, 2)


%{
Instead of typing a different column value, try using a slider to select any column in spectra. To add a slider to the live script, select Control > Slider in the Live Editor tab.
Right-click the slider to configure the slider values. The values should account for each column in spectra, or 1:1:7.
}%