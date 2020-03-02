%Creating program to perform scaling about a fixed point

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
            
%Entering information about scaling matrix
fprintf('\nEnter scaling factor along x-axis: ');
sx = input('');
fprintf('\nEnter scaling factor along y-axis: ');
sy = input('');
            
%Creating scaling matrix S(sx,sy)(h,k)
T = [sx 0 h*(1-sx); 0 sy k*(1-sy); 0 0 1];
             
%Creating transformed object
R = T*P;

%Plotting Quads P and R
fill(P(1,:),P(2,:),'m');
hold on;
    
fill(R(1,:),R(2,:),'c');

%Creating axes lines
line([-20,20],[0,0]);
line([0,0],[-20,20]);
