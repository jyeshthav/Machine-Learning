function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

pos = find(y==1);
neg = find(y==0);

% make two matrices which hold the results

plot(X(pos,1), X(pos,2), 'ko', 'MarkerFaceColor', 'r', 'MarkerSize', 7);
plot(X(neg,1), X(neg,2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);

% ko or k+ gives the nature of the point ie either a circle or a plus sign
% plot the points from positive/negative matrix against the 1st and 2nd parameters from X


% =========================================================================



hold off;

end
