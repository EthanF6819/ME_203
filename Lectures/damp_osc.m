function [X,Wn]=damp_osc(m,b,k,x0,t)
%calculates time series of a damp osilator in distance and time
%[X,Wn]=damp_osc(m,d,k,xo,t)
Wn=sqrt(k/m)-(b.^2/4*m.^2)
X=x0*exp((t*-b)/m)*cos(t.*Wn)
end