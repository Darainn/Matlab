%Program to perform 2D coordinate rotation transformation

%For actual object P
fprintf('Enter number of vertices of given shape: ');
n = input('');
%For coordinates of the given object P
for i=1:n
    fprintf('Enter x coordinate of pt.%d: ', i);
    x(i) = input('');
    fprintf('Enter y coordinate of pt.%d: ', i);
    y(i) = input('');
end

%Creating the given object P
P = ones(3,n);

P(1,:)=x;
P(2,:)=y;

%Entering info about rotation vector
fprintf('\nRotation angle with respect to +ve x-axis(in radians):');
t = input('');

%Creating rotation matrix
Rt = [cos(t) sin(t) 0; -1*sin(t) cos(t) 0; 0 0 1];

subplot(2,1,1);
fill(P(1,:),P(2,:),'m');

%Plotting actual line
line([-20,20],[0,0], 'Color', 'blue');
line([0,0],[-20,20], 'Color', 'blue');

subplot(2,1,2);
fill(P(1,:), P(2,:), 'y');
%Plotting transformed line
line([-20-a,20-a],[-a,-a], 'Color', 'red');
line([-b,-b],[-20-b,20-b], 'Color', 'red');

%End of program