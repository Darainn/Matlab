

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

fprintf( '\nEnter Translation around x-axis:');
a = input('');
fprintf('\nEnter Translation around y-axis:');
b = input('');
fprintf( '\nEnter Translation around z-axis:');
c = input('');


T=[1 0 0 a ; 0 1 0 b; 0 0 1 c ; 0 0 0 1];

R=T*P;


fill3(P(1,:), P(2,:),P(3,:), 'r');
hold on 
fill3(R(1,:), R(2,:),R(3,:), 'g');




title('3D Geomatric Translation');
