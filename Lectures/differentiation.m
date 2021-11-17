% Ethan Ferguson
% lecture 20 Differentiation
clc;clear all; format compact;

%% diff function
x=0:10;
y=[5, 4, 2, 3, 4, 7, 9, 7, 6, 5, 4];

dx=diff(x)
dy=diff(y)
%calculate slope
dy_dx=dy./dx

%% Example 2
%givens
x=linspace(0,pi,50)
y=sin(x)
n=length(x)

%calculations
dy=y(3:n)-y(1:n-2);
dx=x(3:n)-x(1:n-2)

%calculate slope
dy_dx=dy./dx;

plot(x,y,x(2:n-1),dy_dx)

%% ODE (Ordinary Differential Equations)
xrange=[0, 0.5];
y_initial=2;


[x,y]=ode45(@ODEEXAMPLE,xrange,y_initial);

plot(x,y)

%% ODE example 2
xrange=[6,24];
yinitial=-3;

[x,y]=ode45(@ODEEXAMPLE2,xrange,yinitial)

plot(x,y)







