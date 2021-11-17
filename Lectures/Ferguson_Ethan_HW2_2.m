% Ferguson, Ethan
% ME 203 Section 1001 
% Homework #2
clc, clear, format compact
%% Problem 1
% Givens
x= 1:.2:5;
y=7*sind(4*x);
n = numel(y); %number of solutions in matrix
y(3) % the third element of y in the matrix

%% Problem 2
%given
E=sin(-pi/2): 0.05: cos(0);
n=numel(E)%number of elements in array
E(10)%10th element of function

%% Problem 3
%Given
%13*x^3+182*x^2-184*x+2503
P=[13 182 -184 2503]; % matrix for function
r=roots(P) 

%% Problem 4
%calculations
a=(6*pi*atan(12.5))+4; % a calculated

b=5*tan(3*asin(13/5)); % b calculated

%% Problem 5
%given
r=10 %in.
p=0:pi/50:4*pi;
x=r*(p-sin(p));
y=r*(1-cos(p));

%plot
figure(1)
plot(x,y)

%% Problem 6
%given 
t=1:.1:3; %time in seconds
T=6*log(t)-7*exp(0.2*t); %T is temperature of degrees celsius
figure(2)
plot(t,T)
title('Degrees Celsius Change Over Time')
xlabel('Time (s)')
ylabel('Temp (C)')

%% Problem 7
%given
T=293; %Kelvin
R=286.7; %(N*m)/(kg*K)
V=20:0.1:100; %m^3
%Masses
m1=1; %kg
m2=3; %kg
m3=7; %kg
%preasures and different masses
p1=(m1*R*T)*V.^-1;
p2=(m2*R*T)*V.^-1;
p3=(m3*R*T)*V.^-1;
figure(3)
plot(V,p1,V,p2,V,p3)
title('presure at diffrent masses over volume')
xlabel('m^3')
ylabel('N/(m^2)')

%% Problem 8
%given
%b values
b1=1;
b2=2;
b3=3;
t=0:.1:5; %seconds
y1=1-exp(-b1*t);
y2=1-exp(-b2*t);
y3=1-exp(-b3*t);
figure(4)
plot(t,y1,t,y2,t,y3)
xlabel('time')
ylabel('percent value')
t=b2/.98
fprintf('will take %.2f units time to reach 98 percent\n',t)


%% Problem 9
%given
r=0.1:.1:100; %meters
V=(4/3)*pi*r.^3; %volume
A=4*pi*r.^2; %area

figure(5)

subplot(2,1,1)
loglog(r,V)
title('Volume')
xlabel('radius')
ylabel('Volume')

subplot(2,1,2)
loglog(r,A)
title('Area')
xlabel('radius')
ylabel('Area')




