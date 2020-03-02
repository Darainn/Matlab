

for i=1:4
    fprintf('Enter x co-ordinate of pt.%d', i);
    x(i) = input('');
    fprintf('Enter y co-ordinte of pt.%d', i);
    y(i) = input('');
    fprintf('Enter z co-ordinte of pt.%d', i);
    z(i) = input('');
end 

P=ones(4,4);
P(1,:)=x;
P(2,:)=y;
P(3,:)=z;

fprintf( '\nEnter Scaling around x-axis:');
Sx = input('');
fprintf('\nEnter Scaling around y-axis:');
Sy = input('');
fprintf( '\nEnter Scaling around z-axis:');
Sz = input('');


S=[Sx 0 0 0 ; 0 Sy 0 0; 0 0 Sz 0 ; 0 0 0 1];

R=S*P;


fill3(P(1,:), P(2,:),P(3,:), 'r');
hold on 
fill3(R(1,:), R(2,:),R(3,:), 'g');




title('3D Geomatric Scaling');
