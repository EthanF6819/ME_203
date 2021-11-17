function [output]=second_order_odes (tn,sn)
%output single order
%tn=nth order
%sn=solution matrix for nth iteration

%define variables in solution matrix
x1=sn(1)
x2=sn(2)
%creat space for solution
output=zeros(2,1)
%set eqns to solve
output(1)=x2;
output(2)=-(k/m)*x1-(c/m)x2;
end