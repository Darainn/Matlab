%Creating program to perform reflection of an object about a given line

%For coordinates of actual quad object P
for i = 1:4
    fprintf('Enter x-coordinate of pt.%d :', i);
    x(i) = input('');
    fprintf('Enter y-coordinate of pt.%d :', i);
    y(i) = input('');
end 

P = ones(3,4);

P(1,:) = x;
P(2,:) = y;

%Entering info regarding the transformation vector
fprintf('\nEnter slope of given line: ');
m = input('');
fprintf('\nEnter y-intercept of given line: ');
c = input('');
            
%Creating transformation matrix ML
T = [(1-m*m)/(1+m*m) 2*m/(1+m*m) -2*c*m/(1+m*m);
                  2*m/(1+m*m) (m*m-1)/(1+m*m) 2*c/(1+m*m); 0 0 1];

%Creating transformed object
R = T*P;

%Plotting Quads P and R
fill(P(1,:),P(2,:),'m');
hold on;
    
fill(R(1,:),R(2,:),'c');

%Creating axes lines
line([-20,20],[0,0]);
line([0,0],[-20,20]);
