

for i=1:4
    fprintf('Enter x co-ordinate of pt.%d', i);
    x(i) = input('');
    fprintf('Enter y co-ordinte of pt.%d', i);
    y(i) = input('');
    
end 

P=ones(3,4);

P(1,:)=x;
P(2,:)=y;

fprintf('Mirroring along which axis?\n');
t=input('Enter=');

if(t=='x')
T=[1 0 0;0 -1 0;0 0 1];
R=T*P;

else
T=[-1 0 0;0 1 0;0 0 1];

R=T*P;

end;

fill(P(1,:), P(2,:), 'r');
hold on 
fill(R(1,:), R(2,:), 'g');



line([-30,30], [0,0]);
line([0,0], [-30,30]);

xlim([-30,30]);
ylim([-30,30]);

title('2D Geomatric Mirroring'); 
