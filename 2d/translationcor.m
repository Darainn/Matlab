%Program to perform 2D coordinate translation transformation

%Let actual object P be a Quad
%For coordinates of the given Quad P
fprintf('Entering input regarding given actual Quad: \n');
for i=1:4
    fprintf('Enter x coordinate of pt.%d: ', i);
    x(i) = input('');
    fprintf('Enter y coordinate of pt.%d: ', i);
    y(i) = input('');
end

%Creating the given Quad P
P = ones(3,4);

P(1,:)=x;
P(2,:)=y;

%Entering info about translating vector
fprintf('\nTranslation in x-axis:');
a = input('');
fprintf('\nTranslation in y-axis:');
b = input('');

%Creating translation matrix
T = [1 0 -1*a; 0 1 -1*b];

fill(P(1,:),P(2,:),'m');
hold on;

%Plotting actual line
line([-20,20],[0,0], 'Color', 'blue');
line([0,0],[-20,20], 'Color', 'blue');

fill(P(1,:), P(2,:), 'y');

%Line Matrix(For Axes)
%For x-axis
xL = [-20 20; 0 0; 1 1];
%For y-axis
yL = [0 0; -20 20; 1 1];

%Creating transformed translated Line Matrices
%For x-axis
xT = T*xL;
%For y-axis
yT = T*yL;

%Plotting transformed line
line(xT(1,:), xT(2,:) , 'Color', 'red');
line(yT(1,:), yT(2,:) , 'Color', 'red');

%End of program