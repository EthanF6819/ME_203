% Ethan Ferguson
% ME 203 Lec 9
% Playing with graphs day 2
clc; clear; format compact;
%% Polar plots ex1

% givens
x=0:pi/100:pi;
y=sin(x)

% plotting
figure(1)
polar(x,y);
title('polar plot')
figure(2)
plot(x,y);

%% Log scale plot

%givens
x=0:.5:50;
y=5*x.^2;
% plotting
figure(3)
%A)
subplot(2,2,1)
plot(x,y);
title('linear-linear')
grid on
%B)
subplot(2,2,2)
semilogx(x,y);
title('logx-linear')
grid on
%C)
subplot(2,2,3)
semilogy(x,y);
title('linear-logy')
grid on
%D)
subplot(2,2,4)
loglog(x,y);
title('logx-logy')
grid on

%% bar and pie plots

% givens
x=[1 2 5 4 8]
y=[x; 1:5]

figure(4)
subplot(2,2,1)
bar(x);
title('vertical bar graph')

subplot(2,2,2)
bar(y);
title('bar graph (y')

subplot(2,2,3)
pie3(y);

subplot(2,2,4)
bar3(y);
title('3D bar')
colormap(hot)
%% Histograms
%givens
x=[100 95 74 87 22 78 34 35 93 88 86 42 55 48];
figure(5)
histogram(x,10);

%% two scale plotting y axis

x=0:pi/20:2*pi;
y1=sin(x);
y2=exp(x);
figure(6)
subplot(2,1,1)
plot(x,y1,x,y2)
subplot(2,1,2)
yyaxis left
plot(x,y1);
yyaxis right
plot(x,y2);

