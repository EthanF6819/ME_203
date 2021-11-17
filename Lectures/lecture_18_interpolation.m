% Ethan Ferguson
% Lecture 18
clc; clear all, format compact;

%% Interpolation
x=0:5;
y=[0 20 60 68 77 110];
x1=[2.6 4.9];
y1=interp1(x,y,x1)
%% Normal distibution
A=[1 2 3 3 3 6 4 6 8 4 7 7];
d=std(A)
v1=var(A)
v2=d.^2

%% Rand uniform distrobution
rand
rand(2)
rand(2,3)
% randbetween 5 and 15
rand(1,3);
10*rand(1,3)
A=10*rand(1,3)+5

%% Rand uniform distrobution
randn
randn(2)
randn(2,3)

%% ex hieght
m=1.763;
s=.0762
h=randn(1,6)*s+m

%% heads or tails
%flip1=round(rand(1,5))
%flip2=randn(1,5)
flip=randi([0,1],1,50);
%or
xc=[0 1]
FLIP=randi(xc,1,50);
y=hist(FLIP,xc)
bar(xc,y)

%% Noisy signal Simulation
%givens
t=linspace(0,10,512);
Amp=1;
feq=2*pi/5;
sig=Amp*sin(feq.*t)+randn(1,length(t))*0.1;
figure(1)
plot(t,sig)

%% trapz and cumtrapz
x=linspace(0,pi,100);
y=sin(x);
z=cumtrapz(x,y)
%plotting
figure(2)
plot(x,y,x,z)

















