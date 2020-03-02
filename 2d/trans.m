
for i=1:4
    fprintf('Enter x co-ordinate of pt.%d', i);
    x(i) = input('');
    fprintf('Enter y co-ordinte of pt.%d', i);
    y(i) = input('');
end 

P=ones(3,4);

P(1,:)=x;
P(2,:)=y;

fprintf( '\nEnter Translation around x-axis:');
a = input('');
fprintf('\nEnter Translation around y-axis:');
b = input('');

T=[1 0 a; 0 1 b; 0 0 1];

R=T*P;

fill(P(1,:), P(2,:), 'r');
hold on 
fill(R(1,:), R(2,:), 'g');

line([-50,50], [0,0]);
line([0,0], [-50,50]);

xlim([-50,50]);
ylim([-50,50]);

title('2D Geomatric Translation');
