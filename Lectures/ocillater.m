%damp osc
clc; clear all; format compact

m=25; %mass
b=10;
k=20;
t=0:.1:25;
x0=3;

[X,Wn]=damp_osc(m,b,k,x0,t)