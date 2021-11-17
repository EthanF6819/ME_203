% Ethan Ferguson
%Lec 21 ODE part 2
clc; clear all; format compact;
%% Example 3 third order odes
% X range
t_start=0;
t_final=5;
t_range=[t_start t_final];

% initial conditions
xo=0.05;
dxo_dt=0;
initial=[xo dxo_dt];

%solve for x,y, dy/dx

[t s]=ode45('second_order_odes',t_range,initial);

%plot x vs t
figure(1)
subplot(1,2,1)
plot(t,s(:,1))
xlabel('t')
ylabel('x')

%plot dx/dt vs t

subplot(1,2,2)
plot(t,s(:,2))
xlabel('t')
ylabel('dx/dt')