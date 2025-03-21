%  ** PROGRAMMING **

% DECISION BRANCHING --  IF/ELSE 

x = [4:2:84]


% The body of an if block executes only if the condition is true
if x == 5
    y = 3
end


% To execute some other code if the condition is not met, use the 'else' keyword.
if x > 39
    y = 3
else
    y = 4
end


% Add more conditions to the if block, using the 'elseif' keyword after the if statement. 
% Can include multiple elseif blocks. Can also omit the else block.

if condition1 
    code 
elseif condition2
    code 
else
    code
end


% FOR LOOPS

% The loop body executes the given no of times as the loop counter progresses through the assigned values 
for c = 1:3       % the loop body executes three times as the loop counter (c) progresses through the values 1:3 (1, 2, and 3) 
    disp(c)       % body
end


% To loop over a vector of unknown length, use the 'length' function
for idx = 1:length(density)
    plot(idx,density(idx),"*")
    drawnow
end

