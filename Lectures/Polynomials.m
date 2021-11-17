% Ethan Ferguson
% Lecture 17
% Polynomials
clc; clear all, format compact;
%% polyval
a=[2 -4 10]; %2x^2-4x+10
p=polyval(a,2) %evaluating at x=2

%% adding polynomials
p1=[3 15 0 -10 -3 15 -40];
p2=[3 0 -2 -6]
p=p1+[0 0 0 p2]

%% ploy multiply/ convulution
pm=conv(p1,p2)

%% poly divide/ deconcolution
num=[1 -4 2 -3];
den=[1 2];
[q,r]=deconv(num,den)

%% linear regression
x=0:5;
y_hat=20*x;
y=[0 20 60 68 77 110];
figure(1)
plot(x,y,'o',x,y_hat)

Error=y_hat-y
RMS=sqrt(mean(Error.^2))
RMS2=rms(Error)

%% poly fit
x=0:5;
%y_hat=20*x;
y=[0 20 60 68 77 110];
C=polyfit(x,y,1)
y_hat=polyval(C,x)

figure(1)
plot(x,y,'o',x,y_hat)

Error=y_hat-y
RMS=sqrt(mean(Error.^2))
RMS2=rms(Error)

%% Poly int
p=[3 15 -40];
q=polyint(p,10) % with 10 bring the constant

%% Poly diff
a=[1 -4 2 -3];
b=[1 2]
k=polyder(a,b)
[num, dem]=polyder(a,b)