% Ethan Ferguson
%Lecture 19
clc; clear all; format compact;

%% Intergral example 
x=linspace(0,pi,100);

y=sin(x);
z=cumtrapz(x,y)
figure(1)
plot(x,y,x,z)
xlabel('x')
legend('sin(x)','\intsin(x)')

%% example 2
x=linspace(0,pi,100);

y=sin(x);
z=zeros(1,100);
for i=2:100
    z(i)=trapz(x(1:i),y(1:i))
end
figure(2)
plot(x,y,x,z)
xlabel('x')
legend('sin(x)','\intsin(x)')

%% single intergration
xmin=0;
xmax=pi;
F=@(x) sin(x)+cos(x);
q=integral(F,xmin,xmax)

%% multiple integrals
%givens
xmin=2; xmax=4;
ymin=1; ymax=2;

%function
F=@(x,y) (6*x.*y.^2);
q=integral2(F,xmin,xmax,ymin,ymax)

%% Has function in the integral
xmin=0; xmax=1;
ymin=0; ymax=@(x) (1-x);

F=@(x,y) (1./(sqrt(x+y).*(1+x+y)));
q=integral2(F,xmin,xmax,ymin,ymax)

%% Tripple Integrals
%givens
xmin=pi; xmax=2*pi;
ymin=0; ymax=pi;
zmin=0; zmax=@(x,y) (x+y);
%function
F=@(x,y,z) z.*y.*sin(x)+x.*cos(y);
q=integral3(F,xmin,xmax,ymin,ymax,xmin,xmax)





















