% Ethan Ferguson
%matrix math with loops
clc, clear all; format compact;
%% Matrix from functions
%given
x=0:0.5:1;
y=2:2:6;

%z=x.*exp(-x.^2-y.^2)

for i=1:length(x);
    for j=1:length(y);
        z(i,j)=x(i)*exp(-x(i).^2-y(j).^2)
    end
end
z

format short
%% Ploting Matrices
x=-2:0.2:2;
y=-2:0.2:2;

%z=x.*exp(-x.^2-y.^2)

for i=1:length(x);
    for j=1:length(y);
        z(i,j)=x(i)*exp(-x(i).^2-y(j).^2);
        u(i)=x(i)*exp(-x(i)^2);
        v(i,j)=x(i)*exp(-y(j)^2);
    end
end

% Question A

figure(1)
plot3(x,y,z)
% b
figure(2)
quiver(x,y,u,v)
figure(3)
surf(z)
figure(4)
contour(z)

%% Input
X=input('enter an x value;')
T=X*12

%% Input Example
m=input('No of rows in the matrix:')
n=input('No of columns in the matrix')

