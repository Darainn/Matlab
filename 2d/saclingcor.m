
fprintf('Entering input regarding  Quad object: \n');
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

%Entering info about scaling vector
fprintf('\nScaling factor along x-axis:');
sx = input('');
fprintf('\nScaling factor along y-axis:');
sy = input('');

%Creating translation matrix
S = [1/sx 0 0; 0 1/sy 0];

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

%Creating transformed scaled Line Matrices

xT = S*xL;

yT = S*yL;

%Plotting transformed line
line(xT(1,:), xT(2,:) , 'Color', 'red');
line(yT(1,:), yT(2,:) , 'Color', 'red');

%End of program