clc; clear; format compact
%% Exaple 1
x=[0:2:18]
%x=linspace(0,8,10);

y=[0, 0.33, 4.13, 6.29, 6.85, 11.19,13.19, ...
    13.96, 16.33, 19.77]; %Distance, Ft
figure (1)
plot(x,y)
%% Example 2
%givens
x=[0:2:18]
%x=linspace(0,8,10);

y=[0, 0.33, 4.13, 6.29, 6.85, 11.19,13.19, ...
    13.96, 16.33, 19.77]; %Distance, Ft
figure (2)
plot(x,y)
%labels
title('Class Example 2')
xlabel('Time, sec')
ylabel('distance ft')
grid on
%% Exaple 3
%givens
z=[0:.1:10]
w=sin(z);

%plotting
figure(3)

plot(z,w)

title('sin(z)')
xlabel('w')
ylabel('z')

sinz_25=w(25)
%% Example 4
%plotting a single array

figure(4)

z=[1 5 3 2];
plot(z)

%% Example 5
% Plotting multiple lines
x= 0:pi/100:2*pi;
y2=cos(x*4)
figure(5)
plot(x,y2)
hold on
y2=sin(x);
plot(x,y2, 'r-.')
hold off

%% Example 6
% Plotting multiple lines
x= 0:pi/100:2*pi;
y2=cos(x*4)
y2=sin(x)
figure(6)
plot(x,y2,'ks',x,y2, 'r-.')

%% Example 7
%Groupong outputs
x= 0:pi/100:2*pi;
y1=cos(x)*2;
y2=cos(x)*3;
y3=cos(x)*4;
y4=cos(x)*5;
Y=[y1;y2;y3;y4]
figure(7)
plot(x,Y)

%% Example 8 axis scaling

x=[1:10];
y=[58.5 63.8 64.2 67.3 71.5 88.3 90.1 90.6 89.5 90.4]
figure(8)
plot(x,y,'ok',x,y*2,'--xr',x,y/2,'-b')

%scaling axis
axis([0,11,0,200])
    
