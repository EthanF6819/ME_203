%Ferguson, Ethan
%Practice with matrices
clc, clear, format compact
%% Matrix introduction
A=[1 2 3; 4 5 6; 7 8 9];
A(2,1)
A=[1 2 3
    4 5 6
    7 8 9]

%% sub matrix
A=[1 2 3; 4 5 6; 7 8 9];
A2=A(1:2,1:3)
A(1:2,:)
%% Size and Length
S=size(A2)
[r,c]=size(A2)
n=length(A2)
%% transpose
x=0:4
x'
y=[5:5:25]
A=[x' y']
A'

%% scaler matrix multiplication
g=2*A2-1
%% Matrix matrix multiplication
A=[2 5 1; 0 3 -1]
B=[1 0 2; -1 4 -2; 5 2 1]
C=A*B
%% special matricies

O=ones(3)
O2=ones(3,2)
Z=zeros(3)
Z2=zeros(2,4)

I=eye(3)

%% Determinant

A=[2 -4;3 6]
det(A)
%% Inverse
IN=inv(A)

%% Solving systems of equations
A=[2 9;3 -4];
b=[5;7];
x=inv(A)*b
x=A\b
At=[A b]
R=rref(At)