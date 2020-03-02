%Creating program to perform rotation about a fixed point

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

%Entering information about fixed point C(h,k)
 fprintf('\nEnter x-coordinate of fixed point: ');
 h = input('');
 fprintf('\nEnter y-coordinate of fixed point: ');
 k = input('');
            
 %Entering information about the angle of rotation
 fprintf('\nEnter the angle of rotation w.r.t. +ve x-axis(in radians): ');
 t = input('');
            
 %Creating transformation matrix Rt(h,k)
 T = [cos(t) -1*sin(t) k*sin(t)+h*(1-cos(t));
                  sin(t) cos(t) k*(1-cos(t))-h*sin(t); 0 0 1];
 
%Creating transformed object
R = T*P;

%Plotting Quads P and R
fill(P(1,:),P(2,:),'m');
hold on;
    
fill(R(1,:),R(2,:),'c');

%Creating axes lines
line([-20,20],[0,0]);
line([0,0],[-20,20]);
